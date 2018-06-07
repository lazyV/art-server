import {sequelize} from '../../model/index'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"创建轮播失败"
    };
    var {title,url,href} = ctx.request.body;
    var createdDate = new Date();
    await sequelize.query("INSERT INTO carousel VALUES(null,?,?,?,?,null,null)",{
        replacements: [title,url,href,createdDate]
    }).then(result=>{
        if (result[0] > -1) {
            responseData={
                code:0,
                msg:"创建轮播成功"
            };
        }
    })



    ctx.body = responseData;

}

