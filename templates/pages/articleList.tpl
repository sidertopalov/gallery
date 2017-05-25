{% include "./common/header.tpl" %}


<section>
	
	<div class="container">

		<div class="text-center">
				<h2>Галерия {{categoryName}}</h2>
		</div>
		<hr style="border-color: #e74c3c;">
		<br>

		<div class="row text-center">
			{% if articles is not empty %}
				<ul class="pagination">
				{% for page in 1..pages %}
					{% if page == curPage or (curPage == 0 and page == 1) %}
						<li class="active">
							<a href="/gallery/{{categoryName}}?page={{page}}">{{page}}</a>
						</li>
					{% else %}
						<li><a href="/gallery/{{categoryName}}?page={{page}}">{{page}}</a></li>
					{% endif %}
					
				{% endfor %}
				</ul>
			{% endif %}
		</div>
		<section>
			<div class="row text-center">
				{% if articles is not empty %}
					{% for article in articles %}
						<div class=" col-md-3">
							<div class="thumbnail">
							<!-- <div>
								<p>{{article.title}}</p>
							</div> -->
							  <a href="/gallery/product/view/{{article.id}}">
							    <img class="fixedSize img-responsive" src="/{{article.avatar}}" alt="Lights">

								<div class="caption">
									<p style="color: green;"><b>Цена: {{article.price}}лв</b></p>
								</div>
							  </a>
							</div>
						</div>
					{% endfor %}
				{% else %}
					<h3 style="color: red;">Галерията е празна!</h3>
				{% endif %}
			</div>
		</section>

		<div class="row text-center">
			{% if articles is not empty %}
				<ul class="pagination">
				{% for page in 1..pages %}
					{% if page == curPage or (curPage == 0 and page == 1) %}
						<li class="active">
							<a href="/gallery/{{categoryName}}?page={{page}}">{{page}}</a>
						</li>
					{% else %}
						<li><a href="/gallery/{{categoryName}}?page={{page}}">{{page}}</a></li>
					{% endif %}
					
				{% endfor %}
				</ul>
			{% endif %}
		</div>

	</div>


</section>


{% include "./common/footer.tpl" %}