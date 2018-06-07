//数据库连接


import path from 'path';

const rootPath = path.join(__dirname, '../../..');
export default {
  rootPath,
  publicPath: '/public',
  staticPath: '/static',
  title:'少儿美术馆',
  port: 3000,
  db: {
    dialect:'mysql',
    username: 'vv',
    password: '123456',
    database: 'art_museum',
    host:'localhost',
    port:3306
  }
};
