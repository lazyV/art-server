import {sequelize} from '../../model/index'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"点赞参展作品失败"
    };
    var {id} = ctx.request.body;
    var updatedDate = new Date();
    await sequelize.query("UPDATE exhibition_work SET score=score+1,updatedAt=? WHERE id=?",{
        replacements: [updatedDate,id]
    }).then(result=>{
        if (result[0].affectedRows>0) {
            responseData={
                code:0,
                msg:"点赞参展作品成功"
            };
        }
    })
    ctx.body = responseData;

}

