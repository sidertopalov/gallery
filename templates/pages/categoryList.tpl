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
			        <th>Category</th>
			        <th>Action</th>
			      </tr>
	    		</thead>

	    		<tbody>
			        {% for category in categoryDetails  %}
			        	<tr>
					        <td>{{category.category_name}}</td>
					        <td>
					        	<a class="btn btn-primary btn-filled" href="/admin/category/update/{{category.category_name}}">Update</a>
					        	
					        	<a class="btn btn-primary btn-filled" href="/admin/category/delete/{{category.category_name}}">Delete</a>
					        </td>
				      	</tr>
			        {% endfor %}
		      	</tbody>

			</table>
		</div>

	</div>
</section>

{% include "./common/footer.tpl" %}