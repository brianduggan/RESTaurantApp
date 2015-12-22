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
//= require_tree .
//= require jquery.turbolinks

console.log("Hey there");

$(document).ready(function(){
  // calculate time difference in ruby, then color based on the data number
  var $orders = $('#order-color');
$orders.children('li').each(function(){
    var $entity = $(this);
    var $button = $('.food-button');
    var timeDiff = $entity.data("time-elapsed"); //in minutes
    console.log(timeDiff);

    if (timeDiff < 5){
      $entity.css("color", "green");
      $button.css("color", "black");
    } else if (timeDiff >= 15){
      $entity.css("color", "firebrick");
      $button.css("color", "black");
    } else if (timeDiff >= 10){
      $entity.css("color", "tomato");
      $button.css("color", "black");
    } else if (timeDiff >= 5){
      $entity.css("color", "yellow");
      $button.css("color", "black");
    }
  }); //end each

  $('#open-modal').on('click', function(){
    $('#modal').toggle();
  });
  $('#close-modal').on('click', function(){
    $('#modal').toggle();
  });

  var reload = function(){
    console.log("I reloaded!");
    location.reload();
  }

    setInterval(reload, 30000);
})
