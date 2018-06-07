import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"初始化回复失败"
    };
    var {commentId} = ctx.request.query;

    //根据作品id查询当前作品的所有评论
    await sequelize.query("SELECT * FROM reply WHERE commentId=? AND deletedAt is null",{
      replacements:[commentId]
    }).then(result=>{
      responseData={
        code:0,
        msg:"初始化回复成功",
        data:result[0]
      };
    })

    ctx.body = responseData;

  }

