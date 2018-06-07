import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"取消关注用户失败"
    };
    var {fromUserId,toUserId} = ctx.request.body;
    var deletedDate = new Date();
    await sequelize.query("UPDATE relation SET deletedAt=? WHERE fromUserId=? AND toUserId=?",{
      replacements:[deletedDate,fromUserId,toUserId]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"取消关注用户成功"
        };
      }
    })

    ctx.body = responseData;

  }

