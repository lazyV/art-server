import {sequelize} from '../../model/index'
import moment from 'moment'
export default async (ctx, next) => {

    var {current,size,exhibitionId} = ctx.request.query;
    //做分页
    current-=0;
    size-=0;
    var count = 0;
    //查询总数
    var today = new Date();
    var list = [];
    var name = '',exhibitionTime = '',introduction = '',poster='';

    var responseData={
        code:1,
        msg:"暂无人参加该画展",
    };
    await sequelize.query("SELECT count(*) as count FROM exhibition_work WHERE exhibitionId=? AND deletedAt is null",{
        replacements:[exhibitionId]
    }).then(result=>{
        count = result[0][0].count
    })

    await sequelize.query("SELECT name,start,end,poster,introduction FROM exhibition WHERE id=? AND deletedAt is null ",{
        replacements:[exhibitionId]
    }).then(result=>{
        name = result[0][0].name;
        exhibitionTime = `${result[0][0].start} - ${result[0][0].end}`;
        introduction = result[0][0].introduction;
        poster = result[0][0].poster
    })

    await sequelize.query('SELECT id,exhibitionId,exhibitionName,userId,nickName,source,score FROM exhibition_work WHERE exhibitionId=? AND deletedAt is null ORDER BY score DESC limit ?,?',{
        replacements:[exhibitionId,(current-1)*size,size]
    }).then(result=>{
        if (result[0].length>0) {
            responseData={
                code:0,
                msg:"查询当前画展所有作品成功",
                count: count,
                name: name,
                exhibitionTime: exhibitionTime,
                introduction: introduction,
                poster: poster,
                data:result[0]
            };
        }
        if (result[0].length === 0) {
            responseData={
                code:1,
                msg:"暂无人参加该画展",
                name: name,
                exhibitionTime: exhibitionTime,
                introduction: introduction,
                poster: poster
            };
        }
    })


    ctx.body = responseData;

}

