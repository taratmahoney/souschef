function speak(text) {
  // var url = "http://translate.google.com/translate_tts?tl=en&q=" + encodeURIComponent(text);
  var url = "/recipes/tts?speak=" + encodeURIComponent(text);
  $("#speaker").html("<audio controls autoplay><source src='"+url+"' type='audio/mpeg'></audio>")
}

$(function() {
  var current_step = 1;

  var read_current_step = function () {
    // find the next step's p tag
    // unhighlight all steps
    // highlight current step
    // read the step
    console.log("I'm reading a step!")
  }


  var next_step = function(){
    current_step++;
    read_current_step();
  }

  var prev_step = function(){
    current_step--;
    read_current_step();
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