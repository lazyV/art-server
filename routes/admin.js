import Router from 'koa-router';

import posterUpload from '../common/storage/posterUpload';
import exhibitionUpload from '../common/storage/exhibitionUpload';
import thumbUpload from '../common/storage/thumbUpload';

import Login from '../controllers/admin/login';
import UserList from '../controllers/admin/userList';
import UpdateUser from '../controllers/admin/updateUser';
import SearchUser from '../controllers/admin/searchUser';
import DeleteUser from '../controllers/admin/deleteUser';
import WorkList from '../controllers/admin/workList';
import UpdateWork from '../controllers/admin/updateWork';
import SearchWork from '../controllers/admin/searchWork';
import DeleteWork from '../controllers/admin/deleteWork';
import CreateExhibition from '../controllers/admin/createExhibition';
import UploadPoster from '../controllers/admin/uploadPoster';
import ExhibitionList from '../controllers/admin/exhibitionList';
import UpdateExhibition from '../controllers/admin/updateExhibition';
import SearchExhibition from '../controllers/admin/searchExhibition';
import DeleteExhibition from '../controllers/admin/deleteExhibition';
import ExWorkList from '../controllers/admin/exWorkList';
import SearchExWork from '../controllers/admin/searchExWork';
import UploadExhibition from '../controllers/admin/uploadExhibition';
import UpdateExWork from '../controllers/admin/updateExWork';
import DeleteExWork from '../controllers/admin/deleteExWork';
import CourseList from '../controllers/admin/courseList';
import UploadThumb from '../controllers/admin/uploadThumb';
import CreateCourse from '../controllers/admin/createCourse';
import UpdateCourse from '../controllers/admin/updateCourse';
import SearchCourse from '../controllers/admin/searchCourse';
import DeleteCourse from '../controllers/admin/deleteCourse';
import UpdatePwd from '../controllers/admin/updatePwd';
import GetType from '../controllers/admin/getType';
import CarouselList from '../controllers/admin/carouselList';
import UpdateCarousel from '../controllers/admin/updateCarousel';
import CreateCarousel from '../controllers/admin/createCarousel';
import DeleteCarousel from '../controllers/admin/deleteCarousel';
import SearchCarousel from '../controllers/admin/searchCarousel';
const router = new Router();

const multer = require('koa-multer');//加载koa-multer模块  
//文件上传  
//配置  
var storage = multer.diskStorage({  
  //文件保存路径  
  destination: function (req, file, cb) {  
    cb(null, 'public/uploads/')  
  },  
  //修改文件名称  
  filename: function (req, file, cb) {  
    var fileFormat = (file.originalname).split(".");  
    cb(null,Date.now() + "." + fileFormat[fileFormat.length - 1]);  
  }  
})  
//加载配置  
var upload = multer({ storage: storage });  
router.prefix('/admin');

router.post('/login',Login);

router.get('/userList',UserList);

router.post('/updateUser',UpdateUser);

router.get('/searchUser',SearchUser);

router.post('/deleteUser',DeleteUser);

router.get('/workList',WorkList);

router.post('/updateWork',UpdateWork);

router.get('/searchWork',SearchWork);

router.post('/deleteWork',DeleteWork);

router.post('/createExhibition',CreateExhibition);

router.get('/exhibitionList',ExhibitionList);

router.post('/updateExhibition',UpdateExhibition);

router.get('/searchExhibition',SearchExhibition);

router.post('/deleteExhibition',DeleteExhibition);

router.get('/exWorkList',ExWorkList);

router.get('/searchExWork',SearchExWork);

router.post('/updateExWork',UpdateExWork);

router.post('/deleteExWork',DeleteExWork);

router.get('/courseList',CourseList)

router.post('/createCourse',CreateCourse);

router.post('/updateCourse',UpdateCourse);

router.get('/searchCourse',SearchCourse);

router.post('/deleteCourse',DeleteCourse);

router.post('/updatePwd',UpdatePwd);

router.get('/getType',GetType);

router.get('/carouselList',CarouselList);

router.post('/updateCarousel',UpdateCarousel);

router.post('/createCarousel',CreateCarousel);

router.post('/deleteCarousel',DeleteCarousel);

router.get('/searchCarousel',SearchCarousel);

router.post('/uploadPoster', posterUpload.single('poster'), UploadPoster);

router.post('/uploadExhibition', exhibitionUpload.single('exhibition'), UploadExhibition);

router.post('/uploadThumb', thumbUpload.single('thumb'), UploadThumb);

module.exports=router;
