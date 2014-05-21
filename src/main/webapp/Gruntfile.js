// Modules.
var config = require('./config');

// Grunt.
module.exports = function (grunt) {
	'use strict';

	// Grunt configuration.
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),

		// Compile less files into css.
		less: {
			dev: {
				files: {
					'css/default/commit.css': 'less/commit.less'
				}
			},
			prod: {
				files: {
					'css/default/commit.css': 'less/commit.less'
				},
				options: {
					compress: true
				}
			}
		},

		// Copy project assets.
		copy: {
			dev: {
				files: [
					{
						src: ['*.jsp'],
						dest: config.jsp,
						expand: true
					},
					{
						src: ['*.css'],
						dest: config.css,
						expand: true,
						cwd: 'css/default/'
					},
					{
						src: ['**'],
						dest: config.js,
						expand: true,
						cwd: 'js/'
					},
					{
						src: ['**'],
						dest: config.image,
						expand: true,
						cwd: 'images/'
					}
				]
			}
		},

		// Compress JavaScript.
		uglify: {
			options: {
				compress: true,
				mangle: false,
				preserveComments: false
			},
			lib: {
				files: {
					'js/lib/validation/jquery-validation-min.js': ['js/lib/validation/jquery-validation.js']
				}
			},
			source: {
				files: {
					'js/src/login-min.js': ['js/src/login.js'],
					'js/src/logo-parser-min.js': ['js/src/logo-parser.js'],
					'js/src/register-min.js': ['js/src/register.js']
				}
			}
		},

		// Lint settings.
		jshint: {
			options: {
				nomen: false,
				curly: true,
				camelcase: false,
				eqeqeq: true,
				newcap: true,
				undef: true,
				trailing: true,
				strict: true,
				latedef: true,
				indent: true,
				quotmark: true
			},
			global: {
				define: true,
				window: true,
				document: true,
				exports: true,
				module: true,
				require: true
			},
			all: [
				'js/src/*.js',
				'*.js'
			]
		},

		// Watch individual files.
		watch: {
			dev: {
				files: [
					'less/**',
					'js/src/**',
					'images/**',
					'*.jsp'
				],
				tasks: [
					'less:dev',
					'copy:dev'
				]
			}
		}
	});

	// Load plugins/tasks.
	grunt.loadNpmTasks('grunt-contrib');

	// Watch command. Watches less and jsp files for changes.
	grunt.registerTask('watcher', ['watch:dev']);

	// Less compile command. Compiles less to css.
	grunt.registerTask('compile', ['less:dev']);

	// Copy command. Copies project assets.
	grunt.registerTask('copier', ['copy:dev']);

	// Production command.
	grunt.registerTask('prod', ['jshint', 'uglify:lib', 'uglify:source', 'less:prod']);
};