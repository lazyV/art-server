import {sequelize} from '../../model/index'
import { decipher } from '../../common/secret'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"登录失败,用户名或密码错误。"
    };


    //查询用户
    var {userName,password} = ctx.request.body;
    //解密密码
    password = decipher('aes192','123',password);
    await sequelize.query('SELECT id,userName,nickName,avatar,gender,signature FROM user WHERE userName=? AND password=? AND deletedAt is null',{
      replacements: [userName,password]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"登录成功",
          userInfo:result[0][0]
        };
      }
    })


    ctx.body = responseData;

  }

