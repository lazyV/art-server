import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"上传作品失败"
    };
    var {userId,content,type,source,thumb,typeId,visible} = ctx.request.body;
    var createdDate = new Date();

    await sequelize.query("INSERT INTO art_work VALUES (null,?,?,?,?,?,0,0,0,?,?,?,null,null)",{
      replacements:[userId,content,type,source,thumb,typeId,visible,createdDate]
    }).then(result=>{
      responseData = {
        code:0,
        msg:"上传作品成功"
      };
    })


  
    ctx.body = responseData;

  }

