const model = require('./model.js')
const md5 = require('md5')
const checkNotLogin = require('../../middlewares/check.js').checkNotLogin
const checkLogin = require('../../middlewares/check.js').checkLogin

exports.getSite = async ctx => {
    await model.getSite(name)
       .then(ret=>{
           console.log(ret,'8898');
       })
    ctx.body = {
        code: 200,
        message: '登录成功'
    }
}
exports.createSite = async ctx => {
    let { name, pwd } = ctx.request.body
    await model.createSite(name)
        .then(result => {
            let res = result;
        }).catch(err => {
            console.log(err)
        })
}

exports.updateSite = async ctx => {
    let { name, pwd } = ctx.request.body
    await model.updateSite(name)
        .then(result => {
            let res = result;
        }).catch(err => {
            console.log(err)
        })
}