import {sequelize} from '../../model/index'
import moment from 'moment'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"查询用户所参与画展的所有作品失败"
    };
    var {current,size,exhibitionId,userId} = ctx.request.query;
    //做分页
    current-=0;
    size-=0;
    var count = 0;
    //查询总数
    var today = new Date();
    var list = [];
    await sequelize.query("SELECT count(*) as count FROM exhibition_work WHERE exhibitionId=? AND userId=? AND deletedAt is null",{
        replacements:[exhibitionId,userId]
    }).then(result=>{
        count = result[0][0].count
    })


    await sequelize.query('SELECT id,exhibitionId,exhibitionName,userId,nickName,source,score FROM exhibition_work WHERE exhibitionId=? AND userId=? AND deletedAt is null ORDER BY score limit ?,?',{
        replacements:[exhibitionId,userId,(current-1)*size,size]
    }).then(result=>{
        if (result[0].length>0) {
            responseData={
                code:0,
                msg:"查询用户所参与画展的所有作品成功",
                data:result[0]
            };
        }
    })


    ctx.body = responseData;

}

