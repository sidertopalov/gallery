{% include "./common/header.tpl" %}


<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<h1>My Account</h1>	
			</div>
		</div>

			<div class="row text-center">
						
				<div class="col-sm-12 text-center">
					<div class="photo-form-wrapper clearfix">
						<div class="row">

							<div class="col-md-4 col-sm-4">

							</div>

							<form method="post" id="updateAccount"> 

								<div class="col-md-4 col-sm-4">

									<h3 style="text-decoration: underline;"> Change Password </h3>
									<hr style="border-color: #e74c3c;">

									<div style="display:none" class="alert alert-danger" role="alert" id="errorMessage"></div>
									<div style="display:none" class="alert alert-success" role="alert" id="successMessage"></div>

									<input id="userEmail" name="userEmail" type="text" placeholder="First name" disabled value="{{userDetail.email}}">

									<!-- <input id="firstName" name="firstName" type="text" placeholder="First name" value="{{userDetail.first_name}}">

									<input id="lastName" name="lastName" type="text" placeholder="Last name" value="{{userDetail.last_name}}"> -->

									<input id="userPass" name="pass" type="password" placeholder="Password" value="">

									<input id="userPass" name="newPass" type="password" placeholder="New Password" value="">
								
									<input id="userPassConf" name="passConf" type="password" placeholder="Confirm Password" value="">

									<input id="btnSaveChanges" type="submit" class="btn btn-primary btn-filled"  value="Save Changes">
								</div>

							</form>

							<div class="col-md-4 col-sm-4">

							</div>

						</div>
					</div>
				</div>
			
			</div>

			<div class="col-sm-4  col-xs-6">
			</div>

			<div class="col-sm-4  col-xs-12">
				
			</div>
		</div>
	</div>
</section>

{% include "./common/footer.tpl" %}