<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>{{title}}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="/css/flexslider.min.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="/css/line-icons.min.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="/css/elegant-icons.min.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="/css/theme.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="/css/custom.css" type="text/css" rel="stylesheet" media="all"/>

        <!-- <link href="/css/lightbox.min.css" rel="stylesheet" type="text/css" media="all"/> -->
        <!-- <link href="/css/bootstrap-editable.css" type="text/css" rel="stylesheet" media="all"/>
        <link href="/css/passwordStrength.css" type="text/css" rel="stylesheet" media="all"/> -->

        {% for file in css %}
        	<link rel="stylesheet" type="text/css" href="{{file}}">
        {% endfor %}
        <!--[if gte IE 9]>
        	<link rel="stylesheet" type="text/css" href="css/ie9.css" />
		<![endif]-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,400,300,600,700%7CRaleway:700' rel='stylesheet' type='text/css'>
        <script src="/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
		<div class="loader">
    		<div class="spinner">
			  <div class="double-bounce1"></div>
			  <div class="double-bounce2"></div>
			</div>
    	</div>

		<div class="nav-container">
			<nav class="centered-logo top-bar">
				<div class="container">
				
					<div class="row utility-menu">
						<div class="col-sm-12">
							<div class="utility-inner clearfix">
								<span class="alt-font"><i class="icon icon_mail"></i> krasimir_djambazov@gmail.com</span>
								<span class="alt-font">
									<i class="icon icon_phone"></i>0878 535 062
								</span>
								<span>
									<i class="icon social_skype"></i> krasi_djambazov@abv.bg
								</span>
							
								
								<ul class="social-icons text-right">
									
									<!-- <li>
										<a href="#">
											<i class="icon social_twitter"></i>
										</a>
									</li> -->
							
									<li>
										<a href="#">
											<i class="icon social_facebook"></i>
										</a>
									</li>
							
									<!-- <li>
										<a href="#">
											<i class="icon social_dribbble"></i>
										</a>
									</li> -->
								</ul>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-12 text-center">
							<h1> МЕБЕЛИ КРАСИ </h1>
						</div>
					</div>
				
				
					<div class="row nav-menu">
					
						<div class="col-sm-12 columns text-center">
							<ul class="menu">
								<li> <a href="/"><i class="icon icon_house"></i> Начало</a></li>
								<li> <a href="#">Промоции</a></li>						
								<li> <a href="#">Уреди и Мивки</a></li>

								{% if session.isLogged == true %}
									
									<li class="has-dropdown"><a href="#">Продукти</a>
										<ul class="subnav">
											<a href="/admin/article">Добавяне на Продукт</a>
										</ul>
									</li>

									<li class="has-dropdown"><a href="#">Категории</a>
										<ul class="subnav">
											<a href="/admin/category">Нова Категория</a>
											<a href="/admin/category/list">Всички Категории</a>
										</ul>
									</li>

						        	<li class="has-dropdown"><a href="#">Акаунт</a>
						        		<ul class="subnav">
						        			<a href="/account">Профил</a>
						        			<a href="/change/pass">Смяна на парола</a>
						        			<a href="/logout">Излизане</a>
					        			</ul>
					        		</li>


					        	{% else %}

						        	<!-- <li> <a href="/signup">Sign Up</a></li>
									<li> <a href="/login">Login</a></li> -->

						        {% endif %}
						        								
							</ul>
		
						</div>
					</div>
					
					<div class="mobile-toggle">
						<i class="icon icon_menu"></i>
					</div>
					
				</div>
				<div class="bottom-border"></div>
			</nav>
		
		</div>
		
		<div class="main-container">

			