import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"初始化失败"
    };
    var {workId} = ctx.request.query;
    var comments = [];
    //根据作品id查询当前作品的所有评论
    await sequelize.query("SELECT comment.*,user.nickName FROM comment,user WHERE comment.userId=user.id AND workId=? AND comment.deletedAt is null",{
      replacements:[workId]
    }).then(result=>{
      if(result[0].length>0){
        for(var i=0;i<result[0].length;i++){
          comments.push({
            id:result[0][i].id,
            workId:result[0][i].workId,
            content:result[0][i].content,
            userId:result[0][i].userId,
            nickName:result[0][i].nickName
          })
        }
      }
      else{
        responseData={
          code:2,
          msg:"当前没有评论"
        };
      }
    })
    if(comments.length>0){
      for(let i=0;i<comments.length;i++){
        await sequelize.query("SELECT (SELECT nickName from user WHERE user.id=reply.toId) as toNickName,(SELECT nickName from user WHERE user.id=reply.fromId) as fromNickName,reply.* FROM reply WHERE commentId=? AND deletedAt is null",{
          replacements:[comments[i].id]
        }).then(result=>{
          if(result[0].length>0){
            var reply = [];
            for(let j=0;j<result[0].length;j++){
              reply.push({
                toNickName:result[0][j].toNickName,
                fromNickName:result[0][j].fromNickName,
                id:result[0][j].id,
                commentId:result[0][j].commentId,
                replyId:result[0][j].replyId,
                replyType:result[0][j].replyType,
                content:result[0][j].content,
                fromId:result[0][j].fromId,
                toId:result[0][j].toId
              })
            }
            comments[i].reply=reply;
          }
        })
      }
      responseData={
        code:0,
        msg:"初始化成功",
        data:comments
      };
    }

    ctx.body = responseData;

  }

