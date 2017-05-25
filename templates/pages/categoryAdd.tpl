{% include "./common/header.tpl" %}


<section>
	
	<div class="container">


		<div class="row text-center">
			<div>
				<h3>Добавяне на нова категория</h3>
				<hr style="border-color: #e74c3c;">
				<br>
			</div>
			<div class="col-sm-4">
				
			</div>

			<div class="col-sm-4">
			
				<div style="display:none" class="alert alert-danger" role="alert" id="errorMessage"></div>
				<div style="display:none" class="alert alert-success" role="alert" id="successMessage"></div>

				<!-- <div class="table-responsive"> -->
				<form action="/admin/category" method="post" name="myForm" accept="file_extension|image/*" enctype="multipart/form-data" id="categoryAddForm">
					<input class="form-control" type="text" name="categoryName" id="categoryName" placeholder="Име на категория..." value="" /><br>
					<input class="input-file" type="file" name="img" id="img"><br><br>
					
					<input id="btnCategory" type="submit" class="btn btn-primary btn-filled"  value="Създаване" />
				</form>
			</div>

			<div class="col-sm-4">
				
			</div>

			<!-- </div> -->
		</div>

	</div>


</section>


{% include "./common/footer.tpl" %}