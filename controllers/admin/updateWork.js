import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"更新作品信息失败"
    };
    var {id,userId,content,type,source,thumb,views,likes,collect,typeId} = ctx.request.body;
    var updatedDate = new Date();
    await sequelize.query("UPDATE art_work SET content=?,updatedAt=?,typeId=? WHERE id=?",{
      replacements:[content,updatedDate,typeId,id]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"更新作品信息成功"
        };
      }
    })

    ctx.body = responseData;

  }

