import {sequelize} from '../../model/index'
import moment from 'moment'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"更新画展信息失败"
    };
    var {id,name,start,end,poster,introduction} = ctx.request.body;
    var updatedDate = new Date();
    start = moment(start).format('YYYY-MM-DD');
    end = moment(end).format('YYYY-MM-DD');
    await sequelize.query("UPDATE exhibition SET name=?,start=?,end=?,poster=?,introduction=?,updatedAt=? WHERE id=?",{
      replacements:[name,start,end,poster,introduction,updatedDate,id]
    }).then(result=>{
      if(result[0].affectedRows>0){
        responseData={
          code:0,
          msg:"更新画展信息成功"
        };
      }
    })

    ctx.body = responseData;

  }

