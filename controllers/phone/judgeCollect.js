import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"未收藏"
    };
    var {userId,workId} = ctx.request.query;
    
    await sequelize.query("SELECT * FROM collect WHERE userId=? AND workId=? AND deletedAt is null",{
      replacements:[userId,workId]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"已收藏"
        };
      }
    })

    ctx.body = responseData;

  }

