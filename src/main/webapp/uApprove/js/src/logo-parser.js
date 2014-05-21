/*global jQuery:true, window:true, _:true */

// Namespace.
var commit = commit || {};

// DOM Ready.
(function ($, _) {
    'use strict';

    /**
    The LogoParser class extracts the logo url from the service provider
    If the url exists, the value of the logoUrl parameter is appended to
    informational and registration links.

    @class LogoParser
    @constructor
    **/
    commit.LogoParser = function (options) {
        var self = {
            /**
            Property houses class defaults.

            @property defaults
            @type Object
            **/
            defaults: {
                containerId: '#serviceLogoContainer',
                target: '.service-logo-url'
            },

            /**
            Property houses class options.

            @property options
            @type Object
            **/
            options: {},

            /**
            Property houses the url from the service provider logo.

            @property logoUrl
            @type String
            **/
            logoUrl: undefined,

            /**
            Method merges class defaults with passed in options.

            @method mergeOptions
            **/
            mergeOptions: function (options) {
                this.options = $.extend({}, this.defaults, options);

                // Expect the container property.
                if (!this.options.hasOwnProperty('containerId') && this.options.containerId) {
                    throw new Error('Expected options to have a valid containerId property.');
                }

                // Expect the target property.
                if (!this.options.hasOwnProperty('target') && this.options.target) {
                    throw new Error('Expected options to have a valid target property.');
                }
            },

            /**
            Method parses the image tag for url contained within
            the src attribute. The image is output from service
            provider metadata <idpui:serviceLogo></idpui:serviceLogo>.

            @method parseServiceLogo
            **/
            parseServiceLogo: function () {
                // Define.
                var container, logo, logoUrl;

                // Initialize.
                container = $(this.options.containerId);
                logo = container.find('img:first');
                logoUrl = logo.attr('src');

                // Perserve url when it exists.
                if (logoUrl) {
                    this.logoUrl = logoUrl;
                }
            },

            /**
            Method appends the logo url from the service provider
            to the informational and registration links.

            @method appendServiceLogoUrl
            **/
            appendServiceLogoUrl: function () {
                // Define & initialize.
                var target = $(this.options.target),
                    logoUrl = this.logoUrl;

                // Only move forward when logoUrl exists.
                if (logoUrl) {
                    _.each(target, function (elem) {
                        var node = $(elem),
                            href = node.attr('href');

                        if (href) {
                            node.attr('href', href + '?logoUrl=' + logoUrl);
                        }
                    }, this);
                }
            },

            /**
            Method initializes validation logic.

            @method init
            **/
            init: function (options) {
                this.mergeOptions(options);
                this.parseServiceLogo();
                this.appendServiceLogoUrl();
            }
        };

        self.init(options);
        return self;
    };

    // Initialize.
    var logoParser = new commit.LogoParser();
}(jQuery, _));