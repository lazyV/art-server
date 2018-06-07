import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"关注用户失败"
    };
    var {fromUserId,toUserId} = ctx.request.body;
    var createdDate = new Date();
    var attented = false;
    //检测是否已经关注
    await sequelize.query("SELECT * from relation WHERE fromUserId=? AND toUserId=? AND deletedAt is null",{
      replacements: [fromUserId,toUserId]
    }).then(result=>{
      if(result[0].length>0){
        attented =  true;
        responseData={
          code:2,
          msg:"已关注当前用户"
        };
      }
    })
    if(!attented)
    {
      await sequelize.query("INSERT INTO relation VALUES (null,?,?,?,null,null)",{
        replacements:[fromUserId,toUserId,createdDate]
      }).then(result=>{
        responseData = {
          code:0,
          msg:"关注用户成功"
        };
      })
    }



  
    ctx.body = responseData;

  }

