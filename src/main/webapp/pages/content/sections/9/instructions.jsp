<div class="panel panel-default instructions-panel">
	<div class="panel-heading">
		<h3 class="panel-title">Data structures</h3>
	</div>
	<div class="panel-body">
		<h4>Arrays</h4>
		<p>
			Arrays are used to store more than 1 data. Arrays:
		</p>
		<ul>
			<li>store <b>lists</b> of data</li>
			<li>can store <b>different data types</b> at the same time</li>
			<li>are <b>ordered</b> so the position of each piece of data is fixed</li>
		</ul>
		<h5>Example</h5>
<pre>
//Literals
var names = ["Mao","Gandhi","Mandela"];

var sizes = [4, 6, 3, 2, 1, 9];

var mixed = [34, "candy", "blue", 11];

//Using constructor
var myArray = new Array();
myArray[0] = "item1";
myArray[1] = "item2";

//Using constructor - condensed form
var myArray1 = new Array("item1","item2");

</pre>
		<h5>Access item</h5>
		<p>Items in array are access using <code>[]</code></p>
		<h5>Example</h5>
<pre>
var names = ["Mao","Gandhi","Mandela"];
names[1];
</pre>
		<h5>Methods / Properties</h5>
		<ul>
			<li>
			<code>length</code> : Sets or returns the number of elements in an array
			</li>
			<li>
			<code>indexOf()</code> : Search the array for an element and returns its position
			</li>
			<li>
			<code>join()</code> : Joins all elements of an array into a string
			</li>
			<li>
			<code>pop()</code> : Removes the last element of an array, and returns that element
			</li>
			<li>
			<code>push()</code> : Adds new elements to the end of an array, and returns the new length
			</li>
			<li>
			<code>concat()</code> : Joins two or more arrays, and returns a copy of the joined arrays
			</li>
			<li>
			And many more. Refer to <a href="http://www.w3schools.com/jsref/jsref_obj_array.asp" target="_blank">docs</a>
			</li>
		</ul>
	</div>
	<div class="bg-info exercisePanel">
			<h4>Exercise</h4>
			<p>
				Create two arrays <code>fruits</code> and <code>vegetables</code> with elements <b>"orange","apple"</b> and <b>"potato","brinjal"</b>.
			</p>
			<p>
				Create a new array <code>eatables</code> by concating <code>fruits</code> and <code>vegetables</code>
			</p>
			<p>
				Log the length of <code>eatables</code>
			</p>
		</div>
</div>