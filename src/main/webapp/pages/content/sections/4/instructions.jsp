<div class="panel panel-default instructions-panel">
	<div class="panel-heading">
		<h3 class="panel-title">Loops</h3>
	</div>
	<div class="panel-body">
		<p>Loops are used to repeat a set of lines of code until some condition is met.</p>
		<h4><code>for</code></h4>
<pre>
for (var i = 1; i < 11; i = i + 1) {
    /* your code here */;
}
</pre>
		<p>
		Every <code>for</code> loop makes use of a counting variable. Here, our variable is called <code>i</code> (but it can have any name). 
		When the for loop executes the code in the code block - the bit between { } - it does so by starting off where i = 1.
		</p>
		<h4>Breaking out of for loop</h4>
		<p>
			To prematurely quit a <code>for</code> loop, you can:
		</p>
		<ul>
			<li>
				Use <code>break</code>
			</li>
			<li>
				In case the loop is defined in a function, use <code>return</code> to get out of the main function itself.
			</li>
		</ul>
	</div>
	<div class="bg-info exercisePanel">
			<h4>Exercise</h4>
			<p>
				Write a for loop to print your name 10 times. 
			</p>
		</div>
</div>