const { query } = require("../../utils/db");
/**
 * 获取群消息
 * @param  群id
 * @return  message 群消息
 * @return  time  时间
 * @return  from_user  发送人id
 *  @return  avator  发送人头像
 */
let getSite= function(name) {
    let _sql = `select * from user_info where name="${name}";`
    return query( _sql,name)
};
let createSite=function(obj){
    let _sql = `select * from user_info where name="${name}";`
    return query( _sql,name)
}
let updateSite=function(obj){
    let _sql = `select * from user_info where name="${name}";`
    return query( _sql,name)
}

module.exports = {
    getSite,
    createSite,
    updateSite
};