$(document).ready(function() {

  $('.up').on('click', function(e){
    e.preventDefault();
    vote_count = $(this).siblings('.vote_count');
    $.ajax({
      type: "POST",
      url: $(this).attr('href')
    }).done( function() {
    vote_count.text(+vote_count.text() +1);
    });
  });

  $('.down').on('click', function(e){
    e.preventDefault();
    vote_count = $(this).siblings('.vote_count');
    $.ajax({
      type: "POST",
      url: $(this).attr('href')
    }).done( function() {
    vote_count.text(+vote_count.text()-1);
    });
  });

});
