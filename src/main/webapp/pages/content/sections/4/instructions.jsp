<div class="panel panel-default instructions-panel">
	<div class="panel-heading">
		<h3 class="panel-title">Functions</h3>
	</div>
	<div class="panel-body">
		<p>Functions are used to encapsulate reusable chunk of code.</p>
		<h4>Function declaration</h4>
		<ul>
			<li>
				Use <code>function</code> keyword
			</li>
			<li>
				<code>var myFunction = function(args){...}</code>
			</li>
			<li>
				<code>function myFunction(args){...}</code>
			</li>
		</ul>
		<h4>Difference</h4>
		<p>The former is subjected to <b>variable hoisting</b> which implies that you cannot call the function before the declaration.</p>
		<h4>Invocation</h4>
		<p>A function is invoked as follows:</p>
		<pre>myFunction(10, 12)</pre>
		<h4>Arguments</h4>
		<p>A function in javascript can take variable number of arguments. Since the number of arguments a function takes are not fixed, 
		<b>overloading</b> is tricky in javascript. Functions get <b>overriden</b> instead.</p>
		<p>We can achieve a semblance of overloading by using an implicit variable <code>arguments</code> 
		</p>
		<h4>Function Returns!!!</h4>
		<p>A function might return a result of computation by using the <code>return</code> keyword</p>
	</div>
	<div class="bg-info exercisePanel">
			<h4>Exercise</h4>
			<p>
				Create a function <code>sum</code> which returns the sum of arguments.
			</p>
		</div>
</div>