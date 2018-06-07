import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"取消点赞失败"
    };

    var {userId,workId} = ctx.request.body;
    var deletedDate = new Date();
    var flag = false;
    await sequelize.query("UPDATE `like` SET deletedAt=? WHERE userId=? AND workId=?",{
      replacements: [deletedDate,userId,workId]
    }).then(result=>{
      if(result[0].affectedRows>0){
        flag = true;
      }
    })

    if(flag){
      await sequelize.query("UPDATE art_work SET likes=likes-1,updatedAt=? WHERE id=?",{
        replacements:[deletedDate,workId]
      }).then(result=>{
        if(result[0].affectedRows>0){
          responseData={
            code:0,
            msg:"取消点赞成功"
          };
        }
      })
    }

  
    ctx.body = responseData;

  }

