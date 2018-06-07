import {sequelize} from '../../model/index'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"查询分类作品列表失败"
    };
    var {current,size,typeId} = ctx.request.query;
    //做分页
    current-=0;
    size-=0;
    var count = 0;
    //查询总数

    await sequelize.query("SELECT count(*) as count FROM art_work WHERE typeId=? AND visible=0 AND deletedAt is null",{
        replacements:[typeId]
    }).then(result=>{
        count = result[0][0].count
    })

    await sequelize.query('SELECT art_work.id,userId,content,type,source,thumb,views,likes,collect,art_work.createdAt,user.avatar FROM art_work,user WHERE user.id=art_work.userId AND typeId=? AND visible=0 AND art_work.deletedAt is null ORDER BY art_work.createdAt DESC limit ?,?',{
        replacements:[typeId,(current-1)*size,size]
    }).then(result=>{
        if(result[0].length>0){
            responseData={
                code:0,
                msg:"查询分类作品列表成功",
                count,
                current,
                size,
                data:result[0]
            };
        }
    })


    ctx.body = responseData;

}

