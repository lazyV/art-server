import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"点赞失败"
    };

    var {userId,workId} = ctx.request.body;
    var createdDate = new Date();
    var flag = false;
    await sequelize.query("INSERT INTO `like` VALUES (null,?,?,?,null,null)",{
      replacements: [userId,workId,createdDate]
    }).then(result=>{
      if(result[0]>-1){
        flag = true;
      }
    })

    if(flag){
      await sequelize.query("UPDATE art_work SET likes=likes+1,updatedAt=? WHERE id=?",{
        replacements:[createdDate,workId]
      }).then(result=>{
        if(result[0].affectedRows>0){
          responseData={
            code:0,
            msg:"点赞成功"
          };
        }
      })
    }

  
    ctx.body = responseData;

  }

