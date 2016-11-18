$(document).on("turbolinks:load", function(){


	$('#review-form').on('submit', newReview);




});




function newReview(event) {
	event.preventDefault();
	
	var form = $(this);
	var action = form.attr('action');
	var method = form.attr('method');
	var data = form.serialize();

	$(form)[0].reset();
	console.log(data);
	$.ajax({
		url: action,
		method: method,
		data: data
	})
	.done(function(response) {
		console.log(response)
		console.log(form)
		$('#reviews-section').append(response);
		
	})
	.fail(function(error) {
		console.log(error);
		alert(error.status);
	});

};