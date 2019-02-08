var app = {};

(function($){

app = {
  mobileNavigation: function() {
    var reveal = '<span class="reveal-sub-menu"></span>';
    $(".mobile-menu .mm-parent").each(function(i) {
      var clickButton = "mm-reveal-" + (i + 1);
      $(this).children("ul").addClass("hidden");
      $($(reveal).addClass(clickButton)).insertAfter($(this).children("a"));
      app.show("." + clickButton);
    });

     $(".reveal-mobile-menu").on("click touch", function() {
        $(".mobile-menu").toggleClass("show");
    });

  },
  show: function(cl) {
    $(cl).on("click touch", function() {
      //console.log("clicked");
      $(this).next("ul").toggleClass("hidden");
      $(this).toggleClass('show');
    });
  },
  figcaption: function() {
    if ($("figure").length) {
      $("figure").each(function() {
        var imgW = $(this).find('img').width();
        $(this).find("figcaption").css({
          "width": imgW + "px",
          "max-width": "100%"
        });
      });
    }
  }
};

$(document).ready(function() {
    app.mobileNavigation();
    app.figcaption();
    $("a[data-rel^=lightcase]").lightcase( {
        swipe: true
    });
});

}(jQuery));
