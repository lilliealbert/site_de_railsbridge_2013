(function($) {

  $.fn.matchHeight = function(action) {
    action = typeof action !== 'undefined' ? action : 'set'
    return this.each(function() {
      var maxHeight = '', features = $(this).find('.feature');
      if (action === 'set') {
        var maxHeight = Math.max.apply(Math, features.map(function() {
          return $(this).height();
        }));
      }
      features.css({ 'height': maxHeight });
    });
  };

}(jQuery));
