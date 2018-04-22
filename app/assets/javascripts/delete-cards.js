$( document ).ready(function() {

  $('.car-showcase').on("click", ".btn--delete", function(e) {
    e.preventDefault();
    $(this).closest(".card").remove();
  });
});
