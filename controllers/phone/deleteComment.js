import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"删除评论失败"
    };
    var {id,userId} = ctx.request.body;
    var deletedDate = new Date();
    await sequelize.query("UPDATE comment SET deletedAt=? WHERE id=? AND userId=?",{
      replacements:[deletedDate,id,userId]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"删除评论成功"
        };
      }
    })

    ctx.body = responseData;

  }

