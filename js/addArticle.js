$("#addArticle").submit(function(e){
	var url = "/admin/article/create";

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
				$('#price').val("");
				$('#avatar').val("");
				$('#images').val("");
			}

			$('html, body').animate({ scrollTop: 250 }, 'slow');

		}
	});
	e.preventDefault();

});
	
// function changeBackgroundColor()
// {
// 	var editor = tinyMCE.get(0);
// 	editor.getBody().style.backgroundColor = "#f3f3f3";
// }

// $( document ).ready(function() {

// 	tinymce.init({
// 	    selector: '#contentArticle',
// 	    theme: 'modern',
// 	    width: 788,
// 	    height: 333,
// 	    resize: false,
// 	    plugins: [
// 	      'advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker',
// 	      'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
// 	      'save table contextmenu directionality emoticons template paste textcolor'
// 	    ],
// 	    content_css: 'css/content.css',
// 	    setup: function (editor) {
// 	        editor.on('change', function () {
// 	            tinymce.triggerSave();
// 	        });
//     	},
// 	    // setup: function (ed) {
// 	    //     ed.on('init', function(args) {
// 	    //         changeBackgroundColor();
// 	    //     });
// 	    // },
// 	    toolbar: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons'
// 	  });
// });