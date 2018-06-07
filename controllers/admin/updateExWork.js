import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"更新画展作品信息失败"
    };
    var {id,source} = ctx.request.body;
    var updatedDate = new Date();
    await sequelize.query("UPDATE exhibition_work SET source=?,updatedAt=? WHERE id=?",{
      replacements:[source,updatedDate,id]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"更新画展作品信息成功"
        };
      }
    })

    ctx.body = responseData;

  }

