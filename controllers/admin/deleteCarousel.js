import {sequelize} from '../../model/index'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"删除轮播失败"
    };
    var {id} = ctx.request.body;
    var deletedDate = new Date();
    await sequelize.query("UPDATE carousel SET deletedAt=? WHERE id=?",{
        replacements: [deletedDate,id]
    }).then(result=>{
        if(result[0].affectedRows>0){
            responseData={
                code:0,
                msg:"删除轮播成功",
            };
        }
    })

    ctx.body = responseData;

}

