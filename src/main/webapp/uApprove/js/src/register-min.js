var commit=commit||{};!function($,_){"use strict";commit.Register=function(options){var self={defaults:{modal:"#modal",modalTrigger:".modal-trigger",modalPrimary:"#modalPrimary"},options:{},registerUrl:void 0,dialog:{},mergeOptions:function(options){if(this.options=$.extend({},this.defaults,options),!this.options.hasOwnProperty("modal")&&this.options.modal)throw new Error("Expected options to have a valid modal property.");if(!this.options.hasOwnProperty("modalTrigger")&&this.options.modalTrigger)throw new Error("Expected options to have a valid modalTrigger property.");if(!this.options.hasOwnProperty("modalPrimary")&&this.options.modalPrimary)throw new Error("Expected options to have a valid modalPrimary property.")},initializeModal:function(){var win,trigger=$(this.options.modalTrigger),primary=$(this.options.modalPrimary),registerUrl=this.registerUrl;registerUrl&&(this.dialog=$(this.options.modal),this.dialog.modal({show:!1}),trigger.on("click",_.bind(function(e){e.preventDefault(),this.dialog.modal("show")},this)),primary.on("click",_.bind(function(){this.dialog.modal("hide")},this)),this.dialog.on("hidden",_.bind(function(){win=window.open(registerUrl,"","_blank")},this)))},parseRegisterLinks:function(){var target=$(this.options.modalTrigger),registerUrl=$(target[0]).attr("href");this.registerUrl=registerUrl,_.each(target,function(elem){var node=$(elem);node.removeAttr("href").removeAttr("target")},this)},init:function(options){this.mergeOptions(options),this.parseRegisterLinks(),this.initializeModal()}};return self.init(options),self};new commit.Register}(jQuery,_);