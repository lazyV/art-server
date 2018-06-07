import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询热门作品列表失败"
    };
    var {current,size} = ctx.request.query;
    //做分页
    current-=0;
    size-=0;
    var count = 0;
    //查询总数

    await sequelize.query("SELECT count(*) as count FROM art_work WHERE deletedAt is null").then(result=>{
      count = result[0][0].count
    })
  
    await sequelize.query('SELECT id,userId,content,type,source,thumb,views,likes,collect FROM art_work WHERE deletedAt is null ORDER BY likes limit ?,?',{
      replacements:[(current-1)*size,size]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"查询热门作品列表成功",
          count,
          current,
          size,
          data:result[0]
        };
      }
    })


    ctx.body = responseData;

  }

