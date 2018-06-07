import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询作品列表失败"
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
  
    await sequelize.query('SELECT art_work.id,userId,content,type,source,thumb,views,likes,collect,art_work.typeId,typeName FROM art_work,type WHERE art_work.typeId=type.id AND art_work.deletedAt is null ORDER BY art_work.id limit ?,?',{
      replacements:[(current-1)*size,size]
    }).then(result=>{
      console.log(result[0]);
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"查询作品列表成功",
          count,
          current,
          size,
          workList:result[0]
        };
      }
    })


    ctx.body = responseData;

  }

