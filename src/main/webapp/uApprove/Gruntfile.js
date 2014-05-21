// Grunt.
module.exports = function (grunt) {
    'use strict';

    // Grunt configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        clean: {
            uapprove: [
                'js/src/logo-parser-min.js',
                'js/src/register-min.js'
            ]
        },

        less: {
            uapprove: {
                files: {
                    'css/default/commit.css': 'less/commit.less'
                },
                options: {
                    compress: false
                }
            }
        },

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
                jQuery: true,
                exports: true,
                module: true,
                require: true
            },
            all: [
                'js/src/*.js',
                '*.js'
            ]
        },

        uglify: {
            options: {
                compress: true,
                mangle: false,
                preserveComments: false
            },
            source: {
                files: {
                    'js/src/logo-parser-min.js': ['js/src/logo-parser.js'],
                    'js/src/register-min.js': ['js/src/register.js']
                }
            }
        },

        watch: {
            uapprove: {
                files: [
                    'less/**',
                    '*.jsp',
                    'images/**',
                    'ico/**'
                ],
                tasks: [
                    'jshint',
                    'less:uapprove'
                ]
            }
        }

    });

    // Load plugins/tasks.
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');

    // uapprove
    grunt.registerTask('uapprove', ['clean', 'less', 'jshint']);
    grunt.registerTask('uapprove.prod', ['less', 'clean', 'jshint', 'uglify']);
    grunt.registerTask('uapprove.watch', ['watch:uapprove']);
    grunt.registerTask('default', ['uapprove', 'uapprove.watch']);
};