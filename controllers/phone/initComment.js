import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"初始化评论失败"
    };
    var {workId} = ctx.request.query;

    //根据作品id查询当前作品的所有评论
    await sequelize.query("SELECT * FROM comment WHERE workId=? AND deletedAt is null",{
      replacements:[workId]
    }).then(result=>{
      responseData={
        code:0,
        msg:"初始化评论成功",
        data:result[0]
      };
    })

    ctx.body = responseData;

  }

