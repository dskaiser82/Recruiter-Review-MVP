// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_self
//= require agency.js
//= require_tree .

$(function(){
  console.log("anthing")
  $( ".off" ).on( "click", function(event) {
      //on click turn off star to on green
      $(this).attr('src','/icons/star-green1.png').addClass("selected on")
      //Make all the previous stars turn on
      $(".off.selected").prevAll().attr('src','/icons/star-green1.png').addClass("on")
      //capture number into a rating vriable
        var rating = $(".on").length
        //add var rating to h1 class rating in show agencies view
        $(".rating").append(rating);
         //only one click
         $( this ).off( event );

  })

})
