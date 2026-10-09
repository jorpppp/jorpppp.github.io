/* ==========================================================================
   jQuery plugin settings and other scripts
   ========================================================================== */

$(document).ready(function(){

  // Sticky sidebar, smooth scrolling and responsive embeds are handled by
  // CSS (position: sticky, scroll-behavior, max-width), not by plugins.

  // Follow menu drop down (narrow screens)
  $(".author__urls-wrapper button").on("click", function() {
    $(".author__urls").fadeToggle("fast", function() {});
    $(".author__urls-wrapper button").toggleClass("open");
  });

  // If the follow menu was toggled on a narrow screen, fadeToggle leaves an
  // inline display style. Remove it on wide screens (where the button is
  // hidden) so the CSS shows the links again.
  $(window).on("resize", function() {
    if (!$(".author__urls-wrapper button").is(":visible")) {
      $(".author__urls").css("display", "");
      $(".author__urls-wrapper button").removeClass("open");
    }
  });

  // Copy buttons for install commands (Software section of the Research page)
  $(".copy-cmd").on("click", function() {
    var button = $(this);
    var label = button.html();
    navigator.clipboard.writeText(button.data("cmd")).then(function() {
      button.html('<i class="fa-solid fa-check" aria-hidden="true"></i>Copied');
      setTimeout(function() { button.html(label); }, 1500);
    });
  });

});
