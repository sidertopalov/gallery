{% include "./common/header.tpl" %}


<section>
	
	<div class="container">

		<div class="text-center">
				<h1>{{product.title}}</h1>
		</div>
		<hr style="border-color: #e74c3c;">
		<br>


		<div class="row">

		    <div class="col-sm-6">

	        	<a href="/{{product.avatar}}" data-lightbox="roadtrip" data-title="{{product.title}}">
					<img src="/{{product.avatar}}" style="width: 515px; height: 350px">
				</a><br><br>

				{% set count = 1 %}
				{% for photo in photos %}

					{% if photo != product.avatar %}
						<a href="/{{photo}}" data-lightbox="roadtrip" data-title="{{product.title}}">
							<img src="/{{photo}}" style="width: 100px; height: 100px">
						</a>
					{% endif %}

					{% if count == 4 %}
						{% set count = 1 %}
						<br>
					{% else %}
						{% set count = count + 1 %}
					{% endif %}

				{% endfor %}

			</div>

			<div class="col-sm-6">
				<!-- <h2><b>{{product.title}}</b></h2> -->
				<h3><b>{{product.category_name}}</b></h3>
				<br>
				<div class="price">
					<h4><b class="price-new">Нова цена: {{product.new_price}},00 лв</b></h4>
					<span class="price-old">Стара цена: {{product.old_price}},00 лв</span> 
				</div>
				<!-- <span class="price-old">
					
					<p style="color: red;">
						<b>Стара цена: {{product.old_price}},00 лв</b>
					</p>
				</span> -->
				<br>
				<span>
					<h4 style="color: #cc292c; text-decoration: underline;"><b>Описание на продукта</b></h4>
					<br>
					<p style="font-size: 120%;">{{product.description}}</p>
				</span>
			</div>

		</div><br>

	</div>

</section>


{% include "./common/footer.tpl" %}