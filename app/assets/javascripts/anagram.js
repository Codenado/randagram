$(document).ready(function() {

   $('form').on("ajax:success", function(e, data, status, xhr) {
   
    $(".anagrams ol").replaceWith(xhr.responseText)
  }).on("ajax:error", function(e, xhr, status, error) {

  });
});