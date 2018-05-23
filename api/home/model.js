const { query } = require("../../utils/db");

let getHome= function(name) {
    let _sql = `select * from user_info where name="${name}";`
    return query( _sql,name)
};

module.exports = {
	getHome
};