{% include "./common/header.tpl" %}


<section>
	
	<div class="container">

		<div class="text-center">
				<h2>Delete Category</h2>
		</div>
		<hr style="border-color: #e74c3c;">
		<br>
		
		<div style="display:none" class="alert alert-danger" role="alert" id="errorMessage"></div>
		<div style="display:none" class="alert alert-success" role="alert" id="successMessage"></div>

		<div class="table-responsive">
		<div class="text-center">

			<form action="/admin/category/delete" method="post" id="categoryDelete">
				<input hidden type="text" name="categoryAvatar" id="categoryAvatar" value="{{categoryAvatar}}" /><br>
				<h2><div class="text-center text-danger">Are you sure you want to delete?</div></h2><br>
				<input readonly type="text" name="categoryName" id="categoryName" value="{{categoryName}}" /><br><br>
				<input class="btn btn-primary btn-filled" type="submit" name="btnCategorySubmit" id="btnCategorySubmit" value="Изтрий" />
				<a class="btn btn-primary btn-filled" href="/admin/category/list">Back to Category</a>

			</form>
		</div>	
		</div>

	</div>


</section>


{% include "./common/footer.tpl" %}