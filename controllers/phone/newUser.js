import {sequelize} from '../../model/index'
import GetRandom from '../../common/random'
import { decipher } from '../../common/secret'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"注册失败"
    };
    var date=new Date();
    var {userName,password} = ctx.request.body;
    var duplicate = false;
    password = decipher('aes192','123',password);
    //查询用户名是否重复
    await sequelize.query("SELECT * FROM user WHERE userName=? AND deletedAt is null",{
      replacements: [userName]
    }).then(result=>{
      console.log(result[0].length);
      if(result[0].length>0){
        responseData = {
          code:2,
          msg:"用户名重复"
        };
        duplicate = true;
      }
    })
    if(!duplicate)
    {
      var nickName = "CArt-"+GetRandom(6);
      await sequelize.query('INSERT INTO user(userName,nickName,password,createdAt) VALUES(?,?,?,?)',{
        replacements:[userName,nickName,password,date]
      }).then(result=>{
        responseData = {
          code:0,
          msg:"注册成功"
        };
      })
    }

  
    ctx.body = responseData;

  }

