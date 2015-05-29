$(document).on('ready page:load', function() {
  console.log("Im loaded")
  $('#nav-toggle').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).add('.sidebar').toggleClass('is-open');
    $(".ham-layer#2").toggle();
    $(".ham-layer#1").toggleClass("rotate-left");
    $(".ham-layer#3").toggleClass("rotate-right");
    // $('.sidebar').toggleClass('is-open');
    console.log("Now I'm loaded hehehehe")
  });
});