import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询用户列表失败"
    };
    var {current,size} = ctx.request.query;
    //做分页
    current-=0;
    size-=0;
    var count = 0;
    //查询总数

    await sequelize.query("SELECT count(*) as count FROM user WHERE deletedAt is null").then(result=>{
      count = result[0][0].count
    })
  
    await sequelize.query('SELECT id,userName,nickName,gender,avatar,signature FROM user WHERE deletedAt is null limit ?,?',{
      replacements:[(current-1)*size,size]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"查询用户列表成功",
          count,
          current,
          size,
          userList:result[0]
        };
      }
    })


    ctx.body = responseData;

  }

