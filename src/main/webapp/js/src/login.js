// Namespace.
var commit = commit || {};

// DOM Ready.
(function ($, _) {
	'use strict';

	/**
	The Login class houses the client-side
	validation configuration and logic.

	@class Login
	@constructor
	**/
	commit.Login = function (options) {
		var self = {
			/**
			Property houses class defaults.

			@property defaults
			@type Object
			**/
			defaults: {
				form: '#loginForm'
			},

			/**
			Property houses class options.

			@property options
			@type Object
			**/
			options: {},

			/**
			Method merges class defaults with passed in options.

			@method mergeOptions
			**/
			mergeOptions: function (options) {
				this.options = $.extend({}, this.defaults, options);

				// Expect the form property.
				if (!this.options.hasOwnProperty('form') && this.options.form) {
					throw new Error('Expected options to have a valid form property.');
				}
			},

			/**
			Method leverages and configures the jquery-validate plugin
			to provide client-side validation.

			@method validate
			**/
			validate: function () {
				var form = $(this.options.form);
				form.validate({
					errorElement: 'div',
					errorClass: 'help-block',
					rules: {
						j_username: {
							required: true
						},
						j_password: {
							required: true
						}
					},
					messages: {
						j_username: {
							required: 'Please enter a username.'
						},
						j_password: {
							required: 'Please enter a password.'
						}
					},
					highlight: function (element) {
						$(element).closest('.control-group').addClass('error');
					},
					unhighlight: function (element) {
						$(element).closest('.control-group').removeClass('error');
					}
				});
			},

			/**
			Method initializes validation logic.

			@method init
			**/
			init: function (options) {
				this.mergeOptions(options);
				this.validate();
			}
		};

		self.init(options);
		return self;
	};

	// Initialize the Login.
	var login = new commit.Login();
}(jQuery, _));