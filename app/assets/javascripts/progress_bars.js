(function() {
  var bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  this.ProgressBar = (function() {
    function ProgressBar(elem, url) {
      this.stop = bind(this.stop, this);
      this.start = bind(this.start, this);
      this.elem = $(elem);
      this.url = url;
      this.message = this.elem.find('.message');
      this.bar = this.elem.find('.bar');
      this.pingTime = parseInt(this.elem.data('ping-time'));
      this.timeout_call;
    }

    ProgressBar.prototype.start = function() {
      return $.ajax({
        url: this.url,
        dataType: 'json',
        method: 'POST',
        success: (function(_this) {
          return function(data) {
            _this.message.html(data.message);
            _this.bar.css('width', data.percent + "%");
            if (data.percent < 100) {
              _this.timeout_call = setTimeout(_this.start, _this.pingTime);
            }
            if (data.message === "Finished!") {
              return _this.stop();
            }
          };
        })(this)
      });
    };

    ProgressBar.prototype.stop = function() {
      clearTimeout(this.timeout_call);
      return $.ajax({
        url: show,
        dataType: 'html',
        method: 'POST',
        success: (function(_this) {
          return function(data) {
            _this.message.html(data.message);
            _this.bar.css('width', data.percent + "%");
            if (data.percent < 100) {
              _this.timeout_call = setTimeout(_this.start, _this.pingTime);
            }
            if (data.message === "Finished!") {
              return _this.stop();
            }
          };
        })(this)
      });
    };

    return ProgressBar;

  })();

}).call(this);
