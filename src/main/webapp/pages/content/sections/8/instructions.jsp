<div class="panel panel-default instructions-panel">
	<div class="panel-heading">
		<h3 class="panel-title">Control Flow</h3>
	</div>
	<div class="panel-body">
		<h4>switch / case</h4>
		<p>
			For cases where a lot of conditions are involved, <code>if</code> / <code>else</code> statements become cumbersome.
			<code>switch</code> statement can be used in these cases.
		</p>
		<h5>Syntax</h5>
<pre>
switch (/*Some expression*/) {
    case 'option1':
        // Do something
        break;
    case 'option2':
        // Do something else
        break;
    case 'option3':
        // Do a third thing
        break;
    default:
       // Do yet another thing
}
</pre>
		<p>
			Use <code>break</code> to prevent the code from running into the next case automatically. Use <code>default</code> as the fallback 
			if no condition is met.
		</p>
	</div>
	<div class="bg-info exercisePanel">
			<h4>Exercise</h4>
			<p>
				Our <code>switch</code> statement needs a case for 'yellow'. 
				Add it in and make it log a string of your choice to the console (it should be different from the default string).
			</p>
			<p>
				Don't forget to end your case with a break statement - otherwise, it will go on and execute the code for default, too! We don't want that.
			</p>
		</div>
</div>