import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"修改用户信息失败。"
    };
  
  var { userId, nickName, signature, avatar, gender } = ctx.request.body;

  var updatedDate = new Date();

  await sequelize.query("UPDATE user SET nickName=?,signature=?,avatar=?,gender=?,updatedAt=? WHERE id=?",{
    replacements:[nickName,signature,avatar,gender,updatedDate,userId]
  }).then(result=>{
    if(result[0].affectedRows>0){
      responseData={
        code:0,
        msg:"修改用户信息成功。"
      };
    }
  })
        
    ctx.body = responseData;

  }

