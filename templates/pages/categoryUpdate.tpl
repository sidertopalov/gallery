{% include "./common/header.tpl" %}

<section>
	
	<div class="container col-md-12 col-sm-12">

		<div class="text-center">
				<h2>Update Category</h2>
		</div>
		<hr style="border-color: #e74c3c;">
		<br>
		
		<div class="col-sm-4">
				
		</div>

		<div class="col-sm-4">

				<div style="display:none" class="alert alert-danger" role="alert" id="errorMessage"></div>
				<div style="display:none" class="alert alert-success" role="alert" id="successMessage"></div>

			<div class="table-responsive">
				<div class="text-center">

					<form action="/admin/category/update" method="post" id="categoryUpdate" accept="file_extension|image/*" enctype="multipart/form-data">
						<input hidden type="text" name="oldCategoryName" id="categoryName" value="{{categoryName}}" /><br>
						<input hidden type="text" name="oldAvatar" id="oldAvatar" value="{{categoryAvatar}}" /><br>

						<img src="/{{categoryAvatar}}" width="250" height="250"><br><br>
						<input class="form-control" type="text" name="newCategoryName" id="newCategoryName" value="{{categoryName}}" /><br>
						<input class="input-file" type="file" name="img" id="img"><br><br>
						<input class="btn btn-primary btn-filled" type="submit" name="btnCategorySubmit" id="btnCategorySubmit" value="Update" />
						<a class="btn btn-primary btn-filled" href="/admin/category/list">Back to Category</a>

					</form>

				</div>
			</div>
		</div>

		<div class="col-sm-4">
				
		</div>
	</div>


</section>


{% include "./common/footer.tpl" %}