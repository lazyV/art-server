import Router from 'koa-router';

import avatarUpload from '../common/storage/avatarUpload';
import fileUpload from '../common/storage/fileUpload';
import joinUpload from '../common/storage/joinUpload';

import NewUser from '../controllers/phone/newUser';
import Login from '../controllers/phone/login';
import Carousel from '../controllers/phone/carousel';
import UpdatePwd from '../controllers/phone/updatePwd'; 
import UpdateUser from '../controllers/phone/updateUser';
import UploadFile from '../controllers/phone/uploadFile';
import UploadAvatar from '../controllers/phone/uploadAvatar';
import CreateWork from '../controllers/phone/createWork';
import WorkList from '../controllers/phone/workList';
import WorkDetail from '../controllers/phone/workDetail';
import Attention from '../controllers/phone/attention';
import Comment from '../controllers/phone/comment';
import Reply from '../controllers/phone/reply';
import CancelAttention from '../controllers/phone/cancelAttention';
import SearchAttention from '../controllers/phone/searchAttention';
import InitComment from '../controllers/phone/initComment';
import InitReply from '../controllers/phone/initReply';
import InitWorkComment from '../controllers/phone/initWorkComment';
import DeleteReply from '../controllers/phone/deleteReply';
import DeleteComment from '../controllers/phone/deleteComment';
import AddLikes from '../controllers/phone/addLikes';
import CancelLikes from '../controllers/phone/cancelLikes';
import AddCollect from '../controllers/phone/addCollect';
import CancelCollect from '../controllers/phone/cancelCollect';
import UserList from '../controllers/phone/userList';
import SearchUser from '../controllers/phone/searchUser';
import UserWork from '../controllers/phone/userWork';
import MyRelation from '../controllers/phone/myRelation';
import MyCollect from '../controllers/phone/myCollect';
import JudgeLike from '../controllers/phone/judgeLike';
import JudgeCollect from '../controllers/phone/judgeCollect';
import DeleteWork from '../controllers/phone/deleteWork';
import RelationWork from '../controllers/phone/relationWork';
import CourseList from '../controllers/phone/courseList';
import LikesList from '../controllers/phone/likesList';
import WorkNewList from '../controllers/phone/workNewList';
import ExhibitionList from '../controllers/phone/exhibitionList';
import ExhibitionWork from '../controllers/phone/exhibitionWork';
import MyExhibition from '../controllers/phone/myExhibition';
import MyExhibitionWork from '../controllers/phone/myExhibitionWork';
import JoinExhibition from '../controllers/phone/joinExhibition';
import LikeExhibitionWork from '../controllers/phone/likeExhibitionWork';
import UploadJoin from '../controllers/phone/uploadJoin';
import GetType from '../controllers/phone/getType';
import MyWork from '../controllers/phone/myWork';
import WorkTypeList from '../controllers/phone/workTypeList';
const router = new Router();

router.prefix('/phone');

router.post('/newUser',NewUser);

router.post('/login',Login);

router.get('/carouselList',Carousel);

router.post('/updatePwd',UpdatePwd);

router.post('/updateUser',UpdateUser);

router.post('/createWork',CreateWork);

router.get('/workList',WorkList);

router.get('/workDetail',WorkDetail);

router.post('/attention',Attention);

router.post('/comment',Comment)

router.post('/reply',Reply);

router.post('/cancelAttention',CancelAttention);

router.post('/searchAttention',SearchAttention);

router.get('/initComment',InitComment);

router.get('/initReply',InitReply);

router.get('/initWorkComment',InitWorkComment);

router.post('/deleteReply',DeleteReply);

router.post('/deleteComment',DeleteComment);

router.post('/addLikes',AddLikes);

router.post('/cancelLikes',CancelLikes);

router.post('/addCollect',AddCollect);

router.post('/cancelCollect',CancelCollect);

router.get('/userList',UserList);

router.get('/searchUser',SearchUser);

router.get('/userWork',UserWork);

router.get('/myRelation',MyRelation);

router.get('/myCollect',MyCollect);

router.get('/judgeLike',JudgeLike);

router.get('/judgeCollect',JudgeCollect);

router.post('/deleteWork',DeleteWork);

router.get('/relationWork',RelationWork);

router.get('/courseList',CourseList);

router.get('/likesList',LikesList);

router.get('/workNewList',WorkNewList);

router.get('/exhibitionList',ExhibitionList);

router.get('/exhibitionWork',ExhibitionWork);

router.get('/myExhibition',MyExhibition);

router.get('/myExhibitionWork',MyExhibitionWork);

router.post('/joinExhibition',JoinExhibition);

router.post('/likeExhibitionWork',LikeExhibitionWork);

router.get('/getType',GetType);

router.get('/myWork',MyWork);

router.get('/workTypeList',WorkTypeList);

router.post('/uploadAvatar', avatarUpload.single('avatar'), UploadAvatar);  

router.post('/uploadFile', fileUpload.single('file'), UploadFile);

router.post('/uploadJoin', joinUpload.single('join'), UploadJoin);

module.exports=router;
