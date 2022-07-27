// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require rails-ujs

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//会員詳細ページのタブ切り替え
jQuery(document).on('turbolinks:load', function(){
  $('.top-button').on('click', function(){
   
      $('.top_post').css("display", "block")
      $('.top_graph').css("display", "none")
     
 });
 
   $('.ramens').on('click', function(){
   
      $('.graph').css("display", "block")
      $('.top_post').css("display", "none")
     
 });

});


