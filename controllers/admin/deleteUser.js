import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"删除用户失败"
    };
    var {userId} = ctx.request.body;
    var deletedDate = new Date();
    await sequelize.query("UPDATE user SET deletedAt=? WHERE id=?",{
      replacements: [deletedDate,userId]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"删除用户成功",
        };
      }
    })

    ctx.body = responseData;

  }

