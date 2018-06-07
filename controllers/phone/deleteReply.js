import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"删除回复失败"
    };
    var {id,fromId} = ctx.request.body;
    var deletedDate = new Date();
    await sequelize.query("UPDATE reply SET deletedAt=? WHERE id=? AND fromId=?",{
      replacements:[deletedDate,id,fromId]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"删除回复成功"
        };
      }
    })

    ctx.body = responseData;

  }

