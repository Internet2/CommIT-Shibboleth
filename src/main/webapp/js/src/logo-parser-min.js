var commit=commit||{};(function($,_){"use strict";commit.LogoParser=function(options){var self={defaults:{containerId:"#serviceLogoContainer",target:".service-logo-url"},options:{},logoUrl:void 0,mergeOptions:function(options){if(this.options=$.extend({},this.defaults,options),!this.options.hasOwnProperty("containerId")&&this.options.containerId)throw Error("Expected options to have a valid containerId property.");if(!this.options.hasOwnProperty("target")&&this.options.target)throw Error("Expected options to have a valid target property.")},parseServiceLogo:function(){var container,logo,logoUrl;container=$(this.options.containerId),logo=container.find("img:first"),logoUrl=logo.attr("src"),logoUrl&&(this.logoUrl=logoUrl)},appendServiceLogoUrl:function(){var target=$(this.options.target),logoUrl=this.logoUrl;logoUrl&&_.each(target,function(elem){var node=$(elem),href=node.attr("href");href&&node.attr("href",href+"?logoUrl="+logoUrl)},this)},init:function(options){this.mergeOptions(options),this.parseServiceLogo(),this.appendServiceLogoUrl()}};return self.init(options),self},new commit.LogoParser})(jQuery,_);