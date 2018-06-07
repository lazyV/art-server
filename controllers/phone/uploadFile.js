const ffmpeg = require("fluent-ffmpeg");
function getThumb(ctx){
  return new Promise(function(resolve,reject){
    ffmpeg(ctx.req.file.path).screenshots({
      timestamps: ["1%"],
      filename: 'screen-'+ctx.req.file.filename.split('.')[0]+'.png',
      folder: 'public/uploads',
      size: '320x240'
    })
    resolve();
  })
}
export default async (ctx, next) => {
  if(ctx.req.file.mimetype.indexOf('video')>=0){
    getThumb(ctx).then(()=>{
      ctx.body = {  
        code:0,
        fileName: ctx.req.file.filename,                  //返回文件名 
        filePath: '/uploads/'+ctx.req.file.filename, //返回文件路径
        thumbnail: '/uploads/'+'screen-'+ctx.req.file.filename.split('.')[0]+'.png'
      }
    })

  }
  else{
    ctx.body = {  
      code:0,
      fileName: ctx.req.file.filename,                  //返回文件名 
      filePath: '/uploads/'+ctx.req.file.filename //返回文件路径
    }  
  }

}

