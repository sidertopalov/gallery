{% include "./common/header.tpl" %}


<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				{% if userDetail.first_name %}
					<h1>{{userDetail.first_name}}, Account!</h1>	
				{% else %}
					<h1>My Account!</h1>	
				{% endif%}
			</div>
		</div>

			<div class="row text-center">
						
				<!-- <div class="col-sm-12 text-center"> -->
					<div class="photo-form-wrapper clearfix">
						<div class="row">

								<div class="col-md-4 col-sm-4">
									<h3 style="text-decoration: underline;"> Form </h3>
									<hr style="border-color: #e74c3c;">

									<!-- <div class="table-responsive">

										<table class="table">

											<tr>
												<td>Email: 
													<td>
														<input id="userEmail" name="userEmail" type="text" placeholder="First name" disabled value="{{userDetail.email}}">
													</td>
												</td>
											</tr>

											<tr>
												<div>
													<td>First Name: 
														<td>
															<input id="firstName" name="userEmail" type="text" placeholder="First name" disabled value="{{userDetail.first_name}}">
														</td>
													</td>
												</div>
											</tr>

											<tr>
												<div>
													<td>Last Name: 
														<td>
															<input id="lastName" name="userEmail" type="text" placeholder="First name" disabled value="{{userDetail.last_name}}">
														</td>
													</td>
												</div>
											</tr>

											<tr>
												<div>
													<td>Password: 
														<td>
															<input id="userPass" name="pass" type="password" placeholder="Password" value="">
														</td>
													</td>
												</div>	
											</tr>

											<tr>
												<div>
													<td>Confirm Password: 
														<td>
															<input id="userPassConf" name="passConf" type="password" placeholder="Confirm Password" value="">
														</td>
													</td>
												</div>
											</tr>

										</table>
									</div> -->
								</div>

								<div class="col-md-4 col-sm-4">

								<form method="post" id="updateAccount">

										<h3 style="text-decoration: underline;"> Details </h3>
										<hr style="border-color: #e74c3c;">

										<div style="display:none" class="alert alert-danger" role="alert" id="errorMessage"></div>
										<div style="display:none" class="alert alert-success" role="alert" id="successMessage"></div>

										<input disabled id="userEmail" name="userEmail" type="text" placeholder="First name" value="{{userDetail.email}}">

										<input disabled id="firstName" name="firstName" type="text" placeholder="First name" value="{{userDetail.first_name}}">

										<input disabled id="lastName" name="lastName" type="text" placeholder="Last name" value="{{userDetail.last_name}}">

										<input id="btnEdit" type="submit" class="btn btn-primary btn-filled"  value="Edit">

										<a href="/KinguinInternship/myProject/changePass" id="changePass" class="btn btn-primary btn-filled" style="margin-bottom: 30px;" >Change Password</a>

										<input style="display:none;" id="btnDone" type="submit" class="btn btn-primary btn-filled"  value="Done">

										<input style="display:none;" id="btnSaveChanges" type="submit" class="btn btn-primary btn-filled"  value="Save Changes">
								
									</form>
								</div>

								<div class="col-md-4 col-sm-4">
									<h3 style="text-decoration: underline;"> News </h3>
									<hr style="border-color: #e74c3c;">

								</div>
						</div>
					<!-- </div> -->
				<!-- </div> -->
			
			</div>

			<div class="col-sm-4  col-xs-6">
			</div>

			<div class="col-sm-4  col-xs-12">
				
			</div>
		</div>
	</div>
</section>

{% include "./common/footer.tpl" %}