import {sequelize} from '../../model/index'
export default async (ctx, next) => {
    var responseData={
        code:1,
        msg:"查询作品类型失败"
    };
    await sequelize.query("SELECT type.id,type.typeName FROM type WHERE deletedAt is null").then(result => {
        if(result[0].length > 0) {
            responseData={
                code:0,
                msg:"查询作品类型成功",
                data:result[0]
            };
        }
    })

    ctx.body = responseData;

}

