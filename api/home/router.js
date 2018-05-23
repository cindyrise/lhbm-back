const router = require('koa-router')();
const controller = require('./controller')

router.get('/', controller.getHome)

module.exports = router