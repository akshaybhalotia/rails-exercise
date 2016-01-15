function ProgressBar (element, progress_url, show_url) {
    var elem = $(element);
    var bar = elem.find('.progress-bar');
    var progress = progress_url;
    var show = show_url;
    var ping_time = parseInt(elem.data('ping-time'));
    var timeout_call;
    
    function stop() {
	clearTimeout(timeout_call);
	$.ajax({
	    url: show_url,
	    dataType: 'html',
	    method: 'POST',
	    success: function(data) {
		var responseFunc = new Function(data);
		responseFunc();
	    }
	});
    }
    
    function start() {
	$.ajax({
	    url: progress_url,
	    dataType: 'json',
	    method: 'POST',
	    context: this,
	    success: function(data) {
		bar.css('width', data.percent+"%");
		bar.html(data.percent+"%");
		if (data.percent < 100) {
		    timeout_call = setTimeout(start, ping_time);
		} else {
		    stop();
		}
	    }
	});
    }
    
    return {
	start: start
    }
}
