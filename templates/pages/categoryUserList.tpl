{% include "./common/header.tpl" %}


<section>
	
	<div class="container">

		<div class="text-center">
				<h2>List of Questions</h2>
		</div>
		<hr style="border-color: #e74c3c;">
		<br>
		<div class="table-responsive">


			<!-- <table class="table table-striped">
				<thead>
			      <tr>
			      	<th>ID</th>
			        <th>Author</th>
			        <th>Article Name</th>
			        <th>Category ID</th>
			        <th>Content</th>
			      </tr>
	    		</thead>

	    		<tbody>
	    	
			        {% for comments in commentDetails  %}
			        	<tr>
					        <td>{{comments.id}}</td>
					        <td>{{comments.author_id}}</td>
					        <td>{{comments.title}}</td>
					        <td>{{comments.category_id}}</td>
					        <td>{{comments.content}}</td>
				      	</tr>
			        {% endfor %}
			      
		      	</tbody>

			</table> -->

		</div>

		{% for comments in articleDetails  %}

			<section>
				<div class="container table col-md-12 col-sm-12 text-center" >

				<div class="col-md-2 col-sm-2">
					
				</div>
					<div class="col-md-8 col-sm-8 text-center">
						<div>
				        	<h4>
					        	Title:<a href="/read/question/{{comments.title}}">{{comments.title}}</a>
				        	</h4>
				        </div>
						<div class="row">
					        <b>Author:</b><b style="color: #e74c3c">{{comments.author_id}}</b>
				        </div>
				        <div class="row">
				        	<p style="color:green;">Category:{{comments.category_id}}</p>
				        </div>
				        <br>
				        <div>
				        	<hr style="border-color: #000">
					        	<div >{{ comments.content | raw }}</div>
					       	<hr style="border-color: #000">
					       	<div><b>Date: {{comments.date}}</b></div>
				       	</div>
			        </div>
		        </div>

		        <div class="col-md-2 col-sm-2">
					
				</div>
	        </section>

        {% endfor %}

	</div>


</section>


{% include "./common/footer.tpl" %}