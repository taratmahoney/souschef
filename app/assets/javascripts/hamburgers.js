$(document).on('ready page:load', function() {
  
  $('#nav-toggle').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).add('.sidebar').toggleClass('is-open');
    // $('.sidebar').toggleClass('is-open');
  });

  $('body').on('click', function() {
    $('.sidebar.is-open, #nav-toggle.is-open').removeClass('is-open');
  });
});