import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"评论失败，请重试"
    };
    //workId 作品id content 评论的内容 userId 评论者id
    var {workId,content,userId} = ctx.request.body;
    var createdDate = new Date();
    var flag = false;
    var id = -1;
    await sequelize.query("INSERT INTO comment VALUES(null,?,?,?,?,null,null)",{
      replacements:[workId,content,userId,createdDate]
    }).then(result=>{
      flag = true;
      id = result[0];
    })

    //返回评论者的昵称和评论的内容
    if(flag){
      await sequelize.query("SELECT id,nickName FROM user WHERE id=? AND deletedAt is null",{
        replacements:[userId]
      }).then(result=>{
        responseData={
          code:0,
          msg:"评论成功",
          data:{
            userId:result[0][0].id,
            nickName:result[0][0].nickName,
            content:content,
            workId,
            id
          }

        };
      })
    }


    ctx.body = responseData;

  }

