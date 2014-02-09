<div class="panel panel-default instructions-panel">
	<div class="panel-heading">
		<h3 class="panel-title">Data structures</h3>
	</div>
	<div class="panel-body">
		<h4>Objects</h4>
		<h5>
			Nouns and verbs together
		</h5>
		<p>Until now, our nouns (data, such as numbers, strings, or variables) and verbs (functions) have been separate.</p>
		<p>No longer!</p>
		<p>Using <b>objects</b>, we can put our information and the functions that use that information in the same place.</p>
		<p>You can also think of objects as combinations of key-value pairs (like arrays), only their keys don't have to be numbers like 0, 1, or 2: 
		they can be strings and variables.</p>
		<h5>Syntax</h5>
<pre>
//Object literal
var myObject = {
    key: value,
    key: value,
    key: value
};

//Constructor
var myObject = new Object();
myObject.key = value;	
</pre>
		<h5>this</h5>
		<p>An object's method can access the object using <code>this</code>.</p>
	</div>
		<div class="bg-info exercisePanel">
			<h4>Exercise</h4>
			<p>
				Create an object named <code>dog</code> with properties <code>breed</code> and <code>color</code>. 
				Add a method <code>info</code> which concats <code>breed</code>, a space and <code>color</code> and logs it.
			</p>
			<p>
				Call the method using <code>dog.info()</code> to see the results.
			</p>
		</div>
</div>