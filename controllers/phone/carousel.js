import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询轮播图列表失败！"
    };

    //查询轮播表中所有未删除的轮播项

  await sequelize.query("SELECT * FROM carousel WHERE deletedAt is null").then(result => {

    responseData={
      code:0,
      msg:"查询轮播图列表成功！",
      carouselList:result[0]
    }
  })



    ctx.body = responseData;

  }

