import {sequelize} from '../../model/index'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"上传参展作品失败"
    };
    var {exhibitionId,exhibitionName,userId,nickName,source} = ctx.request.body;
    var createdDate = new Date();
    await sequelize.query("INSERT INTO exhibition_work VALUES (null,?,?,?,?,?,0,?,null,null)",{
        replacements: [exhibitionId,exhibitionName,userId,nickName,source,createdDate]
    }).then(result=>{
        if (result[0]>0) {
            responseData={
                code:0,
                msg:"上传参展作品成功"
            };
        }
    })
    ctx.body = responseData;

}

