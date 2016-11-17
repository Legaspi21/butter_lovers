

$(document).ready(function() {
  $('select').material_select();


	$('input.autocomplete').autocomplete({
	    data: {
	      "Apple": null,
	      "Microsoft": null,
	      "Google": 'http://placehold.it/250x250'
	    }
	  });

});