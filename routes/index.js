export default async (ctx, next) => {
  // api server through koa-router
  if (ctx.path.match(/^\/admin/)) {
    
    return await require('./admin').routes()(ctx, next);
  }
  else if(ctx.path.match(/^\/phone/))
  {
    return await require('./phone').routes()(ctx, next);
  }
  // others react-router to render
}