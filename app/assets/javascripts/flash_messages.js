$(function() {
  $(".flash-message").click(function(){
    $(this).addClass("close");
  });

  setTimeout(function(){
    $(".flash-message").addClass("close")
  }, 6000)

  $("#flash-alert").parents('.flash-message').addClass('alert');
});

