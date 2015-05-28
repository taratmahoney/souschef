function speak(text) {
  // var url = "http://translate.google.com/translate_tts?tl=en&q=" + encodeURIComponent(text);
  var url = "/recipes/tts?speak=" + encodeURIComponent(text);
  $("#speaker").html("<audio controls autoplay><source src='"+url+"' type='audio/mpeg'></audio>")
}

String.prototype.repeat = function( num )
{
    return new Array( num + 1 ).join( this );
}

 // find the next step's p tag
 // highlight current step

$(document).on('ready page:load', function() {
  var current_step = 1;

  var read_current_step = function () {
    var step = $("#step" + current_step);

    // read the step
    $('.step-content').removeClass('highlight');
    step.addClass('highlight');
    speak(step.text());

    console.log("I'm reading a step!")
  }


  var next_step = function(){
    read_current_step();
    current_step++;
  }

  var prev_step = function(){
    read_current_step();
    current_step--;
  }

  $(".next-step").on("click", next_step);
  $(".prev-step").on("click", prev_step);

  $("body").keydown(function(event) {
    switch(event.keyCode) {
      case 37: // 'Left'
        event.preventDefault()
        console.log('left')
        prev_step()
        break
      case 39: // 'Right'
        event.preventDefault()
        console.log('right')
        next_step()
        break
    }

  });

});

// http://translate.google.com/translate_tts?tl=en&q="<%= step.content %>"'type='audio/mpeg'