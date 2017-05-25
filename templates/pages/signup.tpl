{% include "./common/header.tpl" %}


			<header class="signup">
					<div class="background-image-holder parallax-background">
						<img class="background-image" alt="Background Image" src="img/hero5.jpg">
					</div>
					
					<div class="container">
						<div class="row">
							<div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
								<h1 class="text-white">Welcome to our amazing new service <br>sign up now and experience the pure goodness</h1>
								<div style="display:none" class="alert alert-success" role="alert" id="emailError"></div>
								<div style="display:none" class="alert alert-success" role="alert" id="emailError2"></div>
								<div style="display:none" class="alert alert-success" role="alert" id="passError"></div>
								<div style="display:none" class="alert alert-success" role="alert" id="passConfError"></div>
							</div>
						</div>

						<div class="row text-center">
						
							<div class="col-sm-12 text-center">
								<div class="photo-form-wrapper clearfix">
									<div class="row">
										<form method="post" action="/signuptwo">
											<div class="col-md-3 col-sm-4">
												<input id="emailSignup" name="emailSignup" class="form-email" type="text" placeholder="Email Address">
											</div>
								
											<div class="col-md-3 col-sm-4">
												<input id="passSignup" name="passSignup" class="form-password" type="password" placeholder="Password">
											</div>
											
											<div class="col-md-3 col-sm-4">
												<input id="passConfSignup" name="passConfSignup" class="form-password2" type="password" placeholder="Confirm Password">
											</div>
											
											<div class="col-md-3 col-md-offset-0 col-sm-4 col-sm-offset-4 text-center">
												<input id="btnSubmitSignup" type="submit" class="btn btn-primary btn-filled"  value="Sign up">
											</div>
										</form>
									</div>
								</div>

								<span class="text-white">30 Day risk free trial - No credit card required</span>
							</div>
						
						</div>
						
					</div>	
			</header>
				
 
{% include "./common/footer.tpl" %}
