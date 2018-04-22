$( document ).ready(function() {

  $('.add-cards').click(function(e) {
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/',
      success: function(resp) {
        var cardSelection = $('.car-showcase');
        cardSelection.append($('.card', resp));
      },
      error: function() {
        console.log("Something bad happened");
      }
});
  });
});
