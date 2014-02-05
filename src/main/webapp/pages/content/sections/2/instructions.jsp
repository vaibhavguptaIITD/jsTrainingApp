<div class="panel panel-default instructions-panel">
	<div class="panel-heading">
		<h3 class="panel-title">Variables</h3>
	</div>
	<div class="panel-body">
		<h3>Variables</h3>
		<p>
			Variables are used to store a value which can be of types discussed
			in the previous section and data structures like
			<code>Array</code>
			and
			<code>Object</code>
			(will discuss this soon).
		</p>
		<p>
			To declare a variable use the
			<code>var</code>
			keyword.
		</p>
		<pre>var abc = "A dragon in need is a dragon indeed."</pre>
		<h4>Scope</h4>
		<p>
			Variables in javascript are <b>function</b> scoped rather than <b>block</b>
			scoped. <em>If <code>var</code> keyword is omitted, the variable
				becomes global scoped.
			</em>
		</p>
		<h4>Variable hoisting</h4>
		<p>
			Variables defined in a function are <b>hoisted</b> above.
		</p>
	</div>
	<div class="bg-info exercisePanel">
			<h4>Exercise</h4>
			<ul>
				<li>Declare a variable <code>myName</code> and give it your
					name.
				</li>
				<li>Use <code>log</code> to print out the <code>myName</code>
					variable.
				</li>
				<li>Change the value of <code>myName</code> to be just the first
					2 letters of your name
				</li>
				<li>Use <code>log</code> to print out the <code>myName</code>
					variable.
				</li>
			</ul>
		</div>
</div>