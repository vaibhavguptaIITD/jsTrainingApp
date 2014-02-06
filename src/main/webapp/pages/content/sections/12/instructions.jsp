<div class="panel panel-default instructions-panel">
	<div class="panel-heading">
		<h3 class="panel-title">Data structures</h3>
	</div>
	<div class="panel-body">
		<h4>Objects</h4>
		<h5>
			Creating a new object
		</h5>
		<p>There are two ways to create an object</p>
		<ul>
			<li>
				Using <b>object literal notation</b>
				<h6>Syntax</h6>
<pre>
var myObj = {
    type: 'fancy',
    disposition: 'sunny'
};

var emptyObj = {};
</pre>
			</li>
			<li>
				Using <b>object constructor</b>
				<h6>Syntax</h6>
<pre>
var myObj = new Object();
</pre>
			</li>
		</ul>
		<h5>Adding keys to object</h5>
<pre>
myObj["name"] = "Charlie";
myObj.name = "Charlie";
</pre>
<p>The former syntax allows us to add dynamic keys</p>
	</div>
	<div class="bg-info exercisePanel">
		<h4>Exercise</h4>
		<p>
			Create two arrays:
		</p>
		<ul>
			<li>
				<code>month</code> with values <b>"Jan", "Feb", "March", "April", "May", "June", "July", "August", "Sept","Oct","Nov", "Dec" </b>
			</li>
			<li>
				<code>days</code> with values <b>31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31</b>
			</li>
		</ul>
		<p>Create an object <code>calendar</code> with keys as entries of <code>month</code> and values as entries of <code>days</code>
		<p>Log the object to see results.(Hint: use <code>JSON.stringify(calendar)</code> to see an object's content)</p>
	</div>
</div>