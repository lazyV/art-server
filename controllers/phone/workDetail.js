import {sequelize} from '../../model/index'
import moment from 'moment'
  export default async (ctx, next) => {
    var responseData={
      code:1,
      msg:"查询作品详情失败！"
    };

  var { workId } = ctx.request.query;

  moment.locale('zh-cn');


  await sequelize.query("SELECT user.nickName,user.avatar,art_work.* FROM art_work,user WHERE art_work.userId=user.id AND art_work.deletedAt is null AND art_work.id=?",{
    replacements:[workId]
  }).then(result => {
    if(result[0].length>0){
      var data={
        nickName: result[0][0].nickName,
        avatar: result[0][0].avatar,
        workId: result[0][0].id,
        userId: result[0][0].userId,
        content: result[0][0].content,
        type: result[0][0].type,
        source: result[0][0].source,
        thumb: result[0][0].thumb,
        views: result[0][0].views,
        likes: result[0][0].likes,
        collect: result[0][0].collect,
        uploadDate: moment(result[0][0].createdAt).format('YYYY-MM-DD')
      };
      responseData={
        code:0,
        msg:"查询作品详情成功！",
        workDetail:data
      }
    }

  })

  await sequelize.query("UPDATE art_work SET views=views+1 WHERE id=?",{
    replacements: [workId]
  });


    ctx.body = responseData;

  }

