import {sequelize} from '../../model/index'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"获得所有作品列表失败"
    };

    //查询轮播表中所有未删除的轮播项

  await sequelize.query("SELECT user.nickName,user.avatar,art_work.* FROM art_work,user WHERE art_work.userId=user.id AND visible=0 AND art_work.deletedAt is null ORDER BY art_work.createdAt DESC").then(result => {

    responseData={
      code:0,
      msg:"获得所有作品列表成功",
      workList:result[0]
    }
  })



    ctx.body = responseData;

  }

