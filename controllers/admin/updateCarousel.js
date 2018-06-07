import {sequelize} from '../../model/index'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"更新轮播信息失败"
    };
    var {id,title,url,href} = ctx.request.body;
    var updatedDate = new Date();
    await sequelize.query("UPDATE carousel SET title=?,url=?,href=?,updatedAt=? WHERE id=?",{
        replacements:[title,url,href,updatedDate,id]
    }).then(result=>{
        if(result[0].affectedRows>0){
            responseData={
                code:0,
                msg:"更新轮播信息成功"
            };
        }
    })

    ctx.body = responseData;

}

