/*global jQuery:true, window:true, _:true */

// Namespace.
var commit = commit || {};

// DOM Ready.
(function ($, _) {
    'use strict';

    /**
    The Register class manages the modal that appears whenever
    a registration link is clicked.

    @class Register
    @constructor
    **/
    commit.Register = function (options) {
        var self = {
            /**
            Property houses class defaults.

            @property defaults
            @type Object
            **/
            defaults: {
                modal: '#modal',
                modalTrigger: '.modal-trigger',
                modalPrimary: '#modalPrimary'
            },

            /**
            Property houses class options.

            @property options
            @type Object
            **/
            options: {},

            /**
            Property houses the registration url.

            @property registerUrl
            @type String
            **/
            registerUrl: undefined,

            /**
            Property houses dialog instance.

            @property dialog
            @type Object
            **/
            dialog: {},

            /**
            Method merges class defaults with passed in options.

            @method mergeOptions
            **/
            mergeOptions: function (options) {
                this.options = $.extend({}, this.defaults, options);

                // Expect the modal property.
                if (!this.options.hasOwnProperty('modal') && this.options.modal) {
                    throw new Error('Expected options to have a valid modal property.');
                }

                // Expect the modal property.
                if (!this.options.hasOwnProperty('modalTrigger') && this.options.modalTrigger) {
                    throw new Error('Expected options to have a valid modalTrigger property.');
                }

                // Expect the modal property.
                if (!this.options.hasOwnProperty('modalPrimary') && this.options.modalPrimary) {
                    throw new Error('Expected options to have a valid modalPrimary property.');
                }
            },

            /**
            Method initializes the modal.

            @method initializeModal
            **/
            initializeModal: function () {
                // Define.
                var trigger = $(this.options.modalTrigger),
                    primary = $(this.options.modalPrimary),
                    registerUrl = this.registerUrl,
                    win;

                // Only move forward when register url exists.
                if (registerUrl) {
                    // Configure modal.
                    this.dialog = $(this.options.modal);
                    this.dialog.modal({show: false});

                    // Trigger handler.
                    trigger.on('click', _.bind(function (e) {
                        e.preventDefault();
                        this.dialog.modal('show');
                    }, this));

                    // Primary handler.
                    primary.on('click', _.bind(function (e) {
                        this.dialog.modal('hide');
                    }, this));

                    // Dialog hidden handler.
                    this.dialog.on('hidden', _.bind(function (e) {
                        win = window.open(registerUrl, '', '_blank');
                    }, this));
                }
            },

            /**
            Method iterates through all the registration links,
            removes unnecessary attributes and stores a reference
            to the registration url.

            @method parseRegisterLinks
            **/
            parseRegisterLinks: function () {
                // Define & initialize.
                var target = $(this.options.modalTrigger),
                    registerUrl = $(target[0]).attr('href');

                // Store url.
                this.registerUrl = registerUrl;

                // Remove attributes from anchors.
                _.each(target, function (elem) {
                    var node = $(elem);
                    node.removeAttr('href').removeAttr('target');
                }, this);
            },

            /**
            Method initializes validation logic.

            @method init
            **/
            init: function (options) {
                this.mergeOptions(options);
                this.parseRegisterLinks();
                this.initializeModal();
            }
        };

        self.init(options);
        return self;
    };

    // Initialize.
    var register = new commit.Register();
}(jQuery, _));