$("#categoryUpdate").submit(function(e){
	var url = "/admin/category/update";

	$.ajax({
		url: url,
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
			}
		}
	});
	
	e.preventDefault();

});