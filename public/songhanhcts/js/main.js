$(function() {
    // Get the form.
    var form = $('#ajax-contact-form');

    // Get the messages div.
    var formMessages = $('.form-notice');

    // Set up an event listener for the contact form.
	$(form).submit(function(event) {
		event.preventDefault(); // Stop the browser from submitting the form (prevent default action).
		var post_url = $(this).attr("action"); //get form action url
		var request_method = $(this).attr("method"); //get form GET/POST method
		var form_data = $(this).serialize(); //Encode form elements for submission
		
		$.ajax({
			url : post_url,
			type: request_method,
			data : form_data
		}).done(function(data){ //
			if (data.status == 'success') {
				if ($(formMessages).hasClass("error")) {
					$(formMessages).removeClass('error');
					$(formMessages).addClass('success');
				}
				
				$('form input, form textarea').val(''); // Clear the form.
                
				$(formMessages).html(
					'<div class="alert alert-success fade in alert-dismissible">' +
						'<a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">&times;</a>' +
						data.notice +
					'</div>'
				);
			} else if (data.status == 'error') {
				if ($(formMessages).hasClass("success")) {
					$(formMessages).removeClass('success');
					$(formMessages).addClass('error');
				}
				$(formMessages).html(
					'<div class="alert alert-danger fade in alert-dismissible">' +
						'<a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">&times;</a>' +
						data.notice +
					'</div>'
				);
			}
		});
	});
    
    function showPopupAds()
    {
        if(typeof($.cookie("ads_showed")) === 'undefined') {
            var date = new Date();
            var minutes = 60;
            date.setTime(date.getTime() + (minutes * 60 * 1000));
            $.cookie("ads_showed", true, { expires: date });
            
            $('#popup-ads').modal('show'); // Show popup
        }
    }
    
    function callerPopupAds()
    {
        setTimeout(showPopupAds, 10000);
    }
    
    callerPopupAds();
});