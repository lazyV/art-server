import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"回复失败，请重试"
    };
    //commentId 回复的评论id replyId回复id replyType(0/1)0表示回复评论 1 表示回复回复
    //content 回复的内容 fromId 评论人 toId 被评论人
    
    var {commentId,replyId,replyType,content,fromId,toId} = ctx.request.body;

    var insertId = -1;

    var createdDate = new Date();

    if(replyType===0)
    {
      replyId=null;
    }

    await sequelize.query("INSERT INTO reply VALUES(null,?,?,?,?,?,?,?,null,null)",{
      replacements: [commentId,replyId,replyType,content,fromId,toId,createdDate]
    }).then(result=>{
      insertId = result[0];

    })
    if(insertId>-1){
      await sequelize.query("SELECT (SELECT nickName FROM user WHERE id=reply.fromId) as fromNickName,(SELECT nickName FROM user WHERE id=reply.toId) as toNickName FROM reply WHERE id=?",{
        replacements:[insertId]
      }).then(result=>{
        responseData={
          code:0,
          msg:"回复成功",
          data:{
            fromId:fromId,
            toId:toId,
            commentId,
            replyId,
            replyType,
            content,
            fromNickName:result[0][0].fromNickName,
            toNickName:result[0][0].toNickName,
            id:insertId
          }
        };
      })
    }

    ctx.body = responseData;

  }

