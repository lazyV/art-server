import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"更新教程信息失败"
    };
    var {id,title,typeId,thumb,url} = ctx.request.body;
    var updatedDate = new Date();
    await sequelize.query("UPDATE course SET title=?,typeId=?,thumb=?,url=?,updatedAt=? WHERE id=?",{
      replacements:[title,typeId,thumb,url,updatedDate,id]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"更新教程信息成功"
        };
      }
    })

    ctx.body = responseData;

  }

