import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"搜索用户失败"
    };
    var {userId,userName,current,size} = ctx.request.query;

    current -=0;
    size -=0;
    var count = 0;
    await sequelize.query(`SELECT count(*) as count FROM user WHERE (userName LIKE "%${userName}%" OR id=${userId}) AND deletedAt is null`).then(result=>{
      count = result[0][0].count
    })

    await sequelize.query(`SELECT id,nickName,gender,userName,signature,avatar FROM user WHERE (userName LIKE "%${userName}%" OR id=${userId}) AND deletedAt is null limit ?,?`,{
      replacements:[(current-1)*size,size]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"搜索用户成功",
          count,
          current,
          size,
          data:result[0]
        };
      }
    })

    ctx.body = responseData;

  }

