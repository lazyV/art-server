import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询用户的所有收藏失败"
    };
    var {userId} = ctx.request.query;
    
    await sequelize.query("SELECT a.workId,b.userId,b.content,b.type,b.source,b.thumb,b.views,b.likes,b.collect FROM collect as a,art_work as b WHERE a.workId=b.id AND a.userId=? AND a.deletedAt is null",{
      replacements:[userId]
    }).then(result=>{
      if(result[0].length>0){
        responseData={
          code:0,
          msg:"查询用户所有收藏成功",
          data:result[0]
        };
      }
    })

    ctx.body = responseData;

  }

