{% include "./common/header.tpl" %}
	
			<section class="no-pad-bottom no-pad-top projects-gallery">
				
				<div class="projects-wrapper clearfix">
					
					<div class="projects-container">
						
					{% for category in categories %}
						<div class="col-md-3 col-sm-6 no-pad project print image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="{{category.avatar}}">
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white"><strong>{{category.category_name}}</strong></h3>
									<p class="text-white">
										{{category.category_name}} по поръчка
									</p>
									<a href="/gallery/{{category.category_name}}" class="btn btn-primary btn-white">Виж {{category.category_name}}</a>
								</div>
							</div>
						</div>
					{% endfor %}

						<!-- <div class="col-md-4 col-sm-6 no-pad project print image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="img/kuhni.jpg">
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white"><strong>Кухни</strong></h3>
									<p class="text-white">
										Кухни по поръчка
									</p>
									<a href="#" class="btn btn-primary btn-white">Виж Кухни</a>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 no-pad project branding image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="img/detska.jpg">
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white"><strong>Детски</strong></h3>
									<p class="text-white">
										Детски по поръчка
									</p>
									<a href="#" class="btn btn-primary btn-white">Виж Детски</a>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 no-pad project print image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="img/spalni.jpg">
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white"><strong>Спални</strong></h3>
									<p class="text-white">
										Спални по поръчка
									</p>
									<a href="#" class="btn btn-primary btn-white">Виж Спални</a>
								</div>
							</div>
						</div> -->
					</div>
				</div>
				
			</section>

<!-- 			<section class="no-pad-bottom no-pad-top projects-gallery">
				
				<div class="projects-wrapper clearfix">
					
					<div class="projects-container">
						
						<div class="col-md-4 col-sm-6 no-pad project print image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="img/project1.jpg">
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white"><strong>Identity</strong> Mockup</h3>
									<p class="text-white">
										Showcase your new identity with<br>this sleek mockup.
									</p>
									<a href="project-single.html" class="btn btn-primary btn-white">See Project</a>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 no-pad project branding image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="img/project4.jpg">
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white"><strong>Aurora</strong> Icon Kit</h3>
									<p class="text-white">
										A fresh and circular take on Apple's<br>iconic home screen.
									</p>
									<a href="project-single.html" class="btn btn-primary btn-white">See Project</a>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-sm-6 no-pad project print image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="img/project6.jpg">
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white"><strong>Sketchbook</strong> Logos</h3>
									<p class="text-white">
										Present your hand-drawn logos on this<br>realistic sketchbook mockup.
									</p>
									<a href="project-single.html" class="btn btn-primary btn-white">See Project</a>
								</div>
							</div>
						</div>
					
					</div>
					
				</div>
				
			</section>
 -->
			<!-- <section class="duplicatable-content">
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<div class="feature">
								<h5>Amazingly Simple Use</h5>
								<p>
									Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus
								</p>
							</div>
						</div>
					
						<div class="col-sm-4">
							<div class="feature">
								<h5>Built on Bootstrap 3</h5>
								<p>
									Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus
								</p>
							</div>
						</div>
					
						<div class="col-sm-4">
							<div class="feature">
								<h5>Rock Solid Flexibility</h5>
								<p>
									Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus
								</p>
							</div>
						</div>
					</div>
				</div>
			</section> -->
			
			<!-- <section class="hero-divider">
			
				<div class="background-image-holder overlay">
					<img class="background-image" alt="Poster Image For Mobiles" src="img/side1.jpg">
				</div>
			
				<div class="video-wrapper">
					<video autoplay="" muted="" loop="">
						<source type="video/webm" src="video/video.webm">
						<source type="video/mp4" src="video/video.mp4">
						<source type="video/ogg" src="video/video.ogv">	
					</video>
		
				</div>
				
				<div class="container">
					<div class="row">	
						<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center">
							<h1 class="text-white">Awesome Video Dividers</h1>
							<p class="lead text-white">
								Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
							</p>
							<a href="#" class="btn btn-white btn-primary">See More</a>
							<a href="#" class="btn btn-primary btn-filled">Purchase</a>
						</div>
					</div>
				</div>
			</section> -->
			
			<section class="duplicatable-content pure-text">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h1>За мен</h1>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-4">
							<h6>Кой съм аз?</h6>
							<p>
								At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
							</p>
						</div>
						
						<div class="col-sm-4">
							<h6>С какво се занимавам?</h6>
							<p>
								At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
							</p>
						</div>
						
						<div class="col-sm-4">
							<h6>Контакти</h6>
							<p>
								At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
							</p>
						</div>
					</div>
				</div>
			</section>


{% include "./common/footer.tpl" %}