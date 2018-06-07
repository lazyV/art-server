import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"搜索用户失败"
    };
    var {nickName} = ctx.request.query;
    await sequelize.query(`SELECT id,userName,nickName,avatar,gender,signature FROM user WHERE nickName LIKE '%${nickName}%'`).then(result=>{
      console.log(result);
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"搜索用户成功",
          data:result[0]
        };
      }
    })


    ctx.body = responseData;

  }

