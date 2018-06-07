import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"当前用户未关注"
    };
    var {fromUserId,toUserId} = ctx.request.body;
    fromUserId = Number(fromUserId);
    toUserId = Number(toUserId);
    await sequelize.query("SELECT * FROM relation WHERE fromUserId=? AND toUserId=? AND deletedAt is null",{
      replacements:[fromUserId,toUserId]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"当前用户已关注"
        };
      }
    })

    ctx.body = responseData;

  }

