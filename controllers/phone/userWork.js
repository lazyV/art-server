import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询用户所有作品失败"
    };
    var {userId} = ctx.request.query;
    
    await sequelize.query("SELECT * FROM art_work WHERE userId=? AND deletedAt is null AND visible=0 ORDER BY createdAt DESC",{
      replacements:[userId]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"查询用户所有作品成功",
          data:result[0]
        };
      }
    })

    ctx.body = responseData;

  }

