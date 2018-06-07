import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"更新用户信息失败"
    };
    var {id,nickName,gender,userName,signature,avatar} = ctx.request.body;
    var updatedDate = new Date();
    await sequelize.query("UPDATE user SET nickName=?,gender=?,signature=?,updatedAt=? WHERE id=?",{
      replacements:[nickName,gender,signature,updatedDate,id]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"更新用户信息成功"
        };
      }
    })

    ctx.body = responseData;

  }

