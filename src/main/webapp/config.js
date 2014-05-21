// Define.
var root, config;

// Set config.
root = '../../../../tomcat/webapps/idp';
config = {
	tomcat: root,
	jsp: root,
	image: (root + '/images'),
	css: (root + '/css/default'),
	js: (root + '/js')
};

// Export.
module.exports = config;