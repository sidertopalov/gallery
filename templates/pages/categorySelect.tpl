{% include "./common/header.tpl" %}


<section>
	
	<div class="container">

		<div class="text-center">
				<h2>List of Category</h2>
		</div>
		<hr style="border-color: #e74c3c;">
		<br>
		<div class="table-responsive">

			<table class="table table-striped">
				<thead>
			      <tr>
			      	<th>ID</th>
			        <th>Category</th>
			        <th>Action</th>
			      </tr>
	    		</thead>

	    		<tbody>
			        {% for category in categoryDetails  %}
			        	<tr>
					        <td>{{category.id}}</td>
					        <td>{{category.name}}</td>
					        <td>
					        <a class="btn btn-primary btn-filled" href="/category/view/{{category.name}}">View Category</a>
					        </td>
				      	</tr>
			        {% endfor %}
		      	</tbody>

			</table>
		</div>

	</div>
</section>

{% include "./common/footer.tpl" %}