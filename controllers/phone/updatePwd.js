import {sequelize} from '../../model/index'
import { decipher } from '../../common/secret'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"修改密码失败。"
    };


    
    var {userId,oldPwd,newPwd} = ctx.request.body
    var flag = false
    oldPwd = decipher('aes192','123',oldPwd);
    newPwd = decipher('aes192','123',newPwd);
    //验证旧密码

  await sequelize.query("SELECT * FROM user WHERE id=? AND password=? AND deletedAt is null",{
    replacements:[userId,oldPwd]
  }).then(result => {
    if(result[0].length>0){
      flag = true;
    }
    else{
      responseData={
        code:2,
        msg:"旧密码验证失败。"
      };
    }
  })

  if(flag){
    await sequelize.query("UPDATE user SET password=? WHERE id=?",{
      replacements: [newPwd,userId]
    }).then(result => {
      if(result[0].affectedRows>0){
        responseData = {
          code:0,
          msg:"修改密码成功。"
        }
      }
    })
  }

    ctx.body = responseData;

  }

