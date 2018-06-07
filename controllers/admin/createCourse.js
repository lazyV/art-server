import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"创建教程失败"
    };
    var {title,type,thumb,url} = ctx.request.body;
    var createdDate = new Date();
    await sequelize.query("INSERT INTO course VALUES(null,?,?,?,?,?,null,null)",{
      replacements: [title,type,thumb,url,createdDate]
    }).then(result=>{
      if (result[0] > -1) {
        responseData={
          code:0,
          msg:"创建教程成功"
        };
      }
    })



    ctx.body = responseData;

  }

