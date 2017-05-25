{% include "./common/header.tpl" %}

<section>
	<div class="container">
		<div class="row">
			<!-- <div class="col-sm-12 text-center">
				{% if userDetail.first_name %}
					<h1>{{userDetail.first_name}}, Account!</h1>	
				{% else %}
					<h1>My Account!</h1>	
				{% endif%}
			</div> -->
		</div>

			<div class="row text-center">
						
				<!-- <div class="col-sm-12 text-center"> -->
					<div class="photo-form-wrapper clearfix">
						<div class="row">

								<div class="col-md-3 col-sm-3">
									<h3 style="text-decoration: underline;"> Side-bar </h3>
									<hr style="border-color: #e74c3c;">
								</div>

								<div class="col-md-6 col-sm-6">

									<form action="/admin/article/create" method="post" accept="file_extension|image/*" enctype="multipart/form-data" id="addArticle">

											<h3 style="text-decoration: underline;"> Добавяне на нов продукт </h3>
											<hr style="border-color: #e74c3c;">

											<div style="display:none" class="alert alert-danger" role="alert" id="errorMessage"></div>
											<div style="display:none" class="alert alert-success" role="alert" id="successMessage"></div>

											<input id="title" name="title" type="text" placeholder="Заглавие..." required>

											<textarea class="form-control" id="description" name="description" rows="6" style="resize: vertical;" placeholder="Описание на продукта..." ></textarea><br>

											Price<input class="form-control" type="number" name="price" id="price" min="0" step="any" required /><br>

											  <!-- <textarea id="myTextarea"></textarea> -->
						  					Avatar Photo<input type="file" name="avatar" id="avatar">

						  					Photos<input type="file" name="images[]" id="images" multiple>

						  					<select id="categoryName" name="categoryName" class="form-control">
											  	{% for category in categoryDetails %}
											  		Category: <option value="{{category.category_name}}">{{ category.category_name }}</option>
											  	{% endfor %}
											</select>
											<br>
											<input id="btnEdit" type="submit" class="btn btn-primary btn-filled"  value="Добави">
									
									</form>
								</div>

								<!-- <div class="col-md-4 col-sm-4">
									<h3 style="text-decoration: underline;"> News </h3>
									<hr style="border-color: #e74c3c;">

								</div> -->
						</div>
					<!-- </div> -->
				</div>
			
			</div>

			<div class="col-sm-4  col-xs-6">
			</div>

			<div class="col-sm-4  col-xs-12">
				
			</div>
		</div>
	</div>
</section>







<!-- <div class="container text-center">
	<div class="form-group">

	 	<input type="text" name="titleArticle" id="titleArticle" placeholder="Title article" value=""/>

	  	<label for="comment">Comment:</label>
	  	<textarea class="form-control" rows="5"  id="comment"></textarea>

	</div>
</div> -->


{% include "./common/footer.tpl" %}