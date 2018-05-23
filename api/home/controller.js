const model = require('./model.js')
const checkNotLogin = require('../../middlewares/check.js').checkNotLogin
const checkLogin = require('../../middlewares/check.js').checkLogin

exports.getHome = async ctx => {
    await ctx.render('home', {
               code: 200,
               message: '登录成功'
    })
}