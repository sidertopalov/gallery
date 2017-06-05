{% include "./common/header.tpl" %}


<section>
	
	<div class="container">

		<div class="text-center">
				<h2>Промоции</h2>
		</div>
		<hr style="border-color: #e74c3c;">
		<br>

		<div class="row text-center">
			{% if promotions is not empty %}
				<ul class="pagination">
				{% for page in 1..pages %}
					{% if page == curPage or (curPage == 0 and page == 1) %}
						<li class="active">
							<a href="/promotions?page={{page}}">{{page}}</a>
						</li>
					{% else %}
						<li><a href="/promotions?page={{page}}">{{page}}</a></li>
					{% endif %}
					
				{% endfor %}
				</ul>
			{% endif %}
		</div>

		<section>
			<div class="row text-center">
				{% if promotions is not empty %}
					{% for promotion in promotions %}
						<div class=" col-md-3">
							<div class="thumbnail">
							<div>
								<b>{{promotion.title}}</b>
							</div>
							  <a href="/promotions/product/view/{{promotion.id}}">
							    <img class="fixedSize img-responsive" src="/{{promotion.avatar}}" alt="Lights">

								<div class="price">
									<span class="price-new">
											<b>{{promotion.new_price}},00 лв</b>
									</span><br>
									<span class="price-old">
											<b>{{promotion.old_price}},00 лв</b>
									</span>
								</div>
							  </a>
							</div>
						</div>
					{% endfor %}
				{% else %}
					<h3 style="color: green;">Очаквайте скоро!</h3>
				{% endif %}
			</div>
		</section>

		<div class="row text-center">
			{% if promotions is not empty %}
				<ul class="pagination">
				{% for page in 1..pages %}
					{% if page == curPage or (curPage == 0 and page == 1) %}
						<li class="active">
							<a href="/promotions?page={{page}}">{{page}}</a>
						</li>
					{% else %}
						<li><a href="/promotions?page={{page}}">{{page}}</a></li>
					{% endif %}
					
				{% endfor %}
				</ul>
			{% endif %}
		</div>

	</div>

</section>


{% include "./common/footer.tpl" %}