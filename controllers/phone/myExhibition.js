import {sequelize} from '../../model/index'
import moment from 'moment'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"查询我参与的画展失败"
    };
    var {userId} = ctx.request.query;

    await sequelize.query("SELECT distinct(a.exhibitionId),b.name,b.start,b.end,b.poster,b.introduction FROM exhibition_work as a,exhibition as b WHERE a.exhibitionId=b.id AND a.userId=? AND a.deletedAt is null",{
        replacements:[userId]
    }).then(result=>{
        responseData={
            code:0,
            msg:"查询我参与的画展成功",
            data:result[0]
        };
    })

    ctx.body = responseData;

}

