$( document ).ready(function() {
  //alert( "ready!" );
  //Reading stars while showing specific movie
	$('.star-rating').raty({
	  path: '/assets/',
	  readOnly: true,
	  score: function() {
	    return $(this).attr('data-score');
	  }
	});

	//writing stars while creating review
	$('#star-rating').raty({  
	  path: '/assets/',
	  scoreName: 'review[rating]',
	});
});
