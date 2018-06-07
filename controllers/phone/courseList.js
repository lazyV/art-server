import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询教程列表失败"
    };
    var {current,size,typeId} = ctx.request.query;
    //做分页
    current-=0;
    size-=0;
    var count = 0;
    //查询总数

    await sequelize.query("SELECT count(*) as count FROM course WHERE typeId=? AND deletedAt is null",{
      replacements:[typeId]
    }).then(result=>{
      count = result[0][0].count
    })
  
    await sequelize.query('SELECT course.id,title,course.typeId,type.typeName,thumb,url FROM course,type WHERE course.typeId=type.id AND course.typeId=? AND course.deletedAt is null limit ?,?',{
      replacements:[typeId,(current-1)*size,size]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"查询教程列表成功",
          count,
          current,
          size,
          courseList:result[0]
        };
      }
    })


    ctx.body = responseData;

  }

