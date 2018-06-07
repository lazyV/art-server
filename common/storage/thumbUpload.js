const multer = require('koa-multer');//加载koa-multer模块  
//文件上传  
//配置  
var thumbStorage = multer.diskStorage({  
  //文件保存路径  
  destination: function (req, file, cb) {  
    cb(null, 'public/uploads')  
  },  
  //修改文件名称  
  filename: function (req, file, cb) {  
    var fileFormat = (file.originalname).split(".");  
    cb(null,Date.now() + "." + fileFormat[fileFormat.length - 1]);  
  }  
})  
//加载配置  
var thumbUpload = multer({ storage: thumbStorage });  
export default thumbUpload;