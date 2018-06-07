import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询用户的所有关注失败"
    };
    var {userId} = ctx.request.query;
    
    await sequelize.query("SELECT relation.fromUserId,relation.toUserId,user.nickName,user.avatar FROM relation,user WHERE relation.toUserId=user.id AND fromUserId=? AND relation.deletedAt is null;",{
      replacements:[userId]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"查询用户所有关注成功",
          data:result[0]
        };
      }
    })

    ctx.body = responseData;

  }

