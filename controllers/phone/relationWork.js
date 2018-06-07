import {sequelize} from '../../model/index'
import Sort from '../../common/sort';
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询关注用户的作品失败"
    };
    var {userId} = ctx.request.query;
    var users = null;
    var lists = [];
    await sequelize.query("SELECT relation.fromUserId,relation.toUserId,user.nickName,user.avatar FROM relation,user WHERE relation.toUserId=user.id AND fromUserId=? AND relation.deletedAt is null;",{
      replacements:[userId]
    }).then(result=>{
      users = result[0];
    })
    if(users.length > 0){
      for(let i=0;i<users.length;i++){
        await sequelize.query("SELECT art_work.*,user.nickName,user.avatar FROM art_work,user WHERE visible=0 AND art_work.userId=user.id AND art_work.userId=? AND art_work.deletedAt is null",{
          replacements: [users[i].toUserId]
        }).then(res=>{
          for(var j=0;j<res[0].length;j++){
            lists.push({
              workId:res[0][j].id,
              userId:res[0][j].userId,
              nickName:res[0][j].nickName,
              avatar:res[0][j].avatar,
              content:res[0][j].content,
              type:res[0][j].type,
              source:res[0][j].source,
              thumb:res[0][j].thumb,
              views:res[0][j].views,
              likes:res[0][j].likes,
              collect:res[0][j].collect,
              createdAt:res[0][j].createdAt
            })
          }

        })
      }
      responseData={
        code:0,
        msg:"查询关注用户的作品成功",
        lists:Sort(lists,"createdAt")
      };
    }
    ctx.body = responseData;

  }

