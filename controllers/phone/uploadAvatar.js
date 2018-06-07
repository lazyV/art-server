  export default async (ctx, next) => {
    ctx.body = {  
      code:0,
      fileName: ctx.req.file.filename,                  //返回文件名 
      filePath: '/avatar/'+ctx.req.file.filename //返回文件路径
    }  
  }

