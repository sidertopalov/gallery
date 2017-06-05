$("#addArticle").submit(function(e){
	var url = "/admin/promotions/create";

	$.ajax({
		url: url,
		// beforeSend: function(){
		//     $('#ajax-loader').show();
		// },
		type: "POST",
		data: new FormData(this),
		contentType: false,
		cache: false,
		processData:false,
		dataType: "json",
		success: function(data){

			if (data.error == true ) {
				$('#successMessage').hide();
				$('#errorMessage').html( data.message ).fadeTo(1,1000);
			} else {
				$('#errorMessage').hide();
				$('#successMessage').html( data.message ).fadeTo(1,1000);
				
				$('#title').val("");
				$('#description').val("");
				$('#oldPrice').val("");
				$('#newPrice').val("");
				$('#avatar').val("");
				$('#images').val("");
			}

			$('html, body').animate({ scrollTop: 250 }, 'slow');

		}
	});
	e.preventDefault();

});