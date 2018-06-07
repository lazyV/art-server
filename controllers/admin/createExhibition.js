import {sequelize} from '../../model/index'
import moment from 'moment'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"创建画展失败"
    };
    var {name,start,end,poster,introduction} = ctx.request.body;

    var createdDate = new Date();
    start = moment(start).format('YYYY-MM-DD');
    end = moment(end).format('YYYY-MM-DD');
    await sequelize.query("INSERT INTO  exhibition VALUES(null,?,?,?,?,?,?,null,null)",{
      replacements: [name,start,end,poster,introduction,createdDate]
    }).then(result=>{
      if (result[0] > -1) {
        responseData={
          code:0,
          msg:"创建画展成功"
        };
      }
    })



    ctx.body = responseData;

  }

