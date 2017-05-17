package phaser;

import haxe.extern.Rest;

/**
* Signals are what Phaser uses to handle events and event dispatching.
* You can listen for a Signal by binding a callback / function to it.
* This is done by using either `Signal.add` or `Signal.addOnce`.
* 
* For example you can listen for a touch or click event from the Input Manager
* by using its `onDown` Signal:
* 
* `game.input.onDown.add(function() { ... });`
* 
* Rather than inline your function, you can pass a reference:
* 
* `game.input.onDown.add(clicked, this);`
* `function clicked () { ... }`
* 
* In this case the second argument (`this`) is the context in which your function should be called.
* 
* Now every time the InputManager dispatches the `onDown` signal (or event), your function
* will be called.
* 
* Very often a Signal will send arguments to your function.
* This is specific to the Signal itself.
* If you're unsure then check the documentation, or failing that simply do:
* 
* `Signal.add(function() { console.log(arguments); })`
* 
* and it will log all of the arguments your function received from the Signal.
* 
* Sprites have lots of default signals you can listen to in their Events class, such as:
* 
* `sprite.events.onKilled`
* 
* Which is called automatically whenever the Sprite is killed.
* There are lots of other events, see the Events component for a list.
* 
* As well as listening to pre-defined Signals you can also create your own:
* 
* `var mySignal = new Phaser.Signal();`
* 
* This creates a new Signal. You can bind a callback to it:
* 
* `mySignal.add(myCallback, this);`
* 
* and then finally when ready you can dispatch the Signal:
* 
* `mySignal.dispatch(your arguments);`
* 
* And your callback will be invoked. See the dispatch method for more details.
*/
@:native("Phaser.Signal")
extern class Signal {

	/**
	* Is the Signal active? Only active signals will broadcast dispatched events.
	* 
	* Setting this property during a dispatch will only affect the next dispatch. To stop the propagation of a signal from a listener use {@link Phaser.Signal#halt halt}.
	* Default: true
	*/
	var active:Bool;
	
	var boundDispatch:Dynamic;
	
	/**
	* Memorize the previously dispatched event?
	* 
	* If an event has been memorized it is automatically dispatched when a new listener is added with {@link Phaser.Signal#add add} or {@link Phaser.Signal#addOnce addOnce}.
	* Use {@link Phaser.Signal#forget forget} to clear any currently memorized event.
	*/
	var memorize:Bool;
	
	/**
	* Add an event listener for this signal.
	* 
	* An event listener is a callback with a related context and priority.
	* 
	* You can optionally provide extra arguments which will be passed to the callback after any internal parameters.
	* 
	* For example: `Phaser.Key.onDown` when dispatched will send the Phaser.Key object that caused the signal as the first parameter.
	* Any arguments you've specified after `priority` will be sent as well:
	* 
	* `fireButton.onDown.add(shoot, this, 0, 'lazer', 100);`
	* 
	* When onDown dispatches it will call the `shoot` callback passing it: `Phaser.Key, 'lazer', 100`.
	* 
	* Where the first parameter is the one that Key.onDown dispatches internally and 'lazer',
	* and the value 100 were the custom arguments given in the call to 'add'.
	* 
	* @param listener The function to call when this Signal is dispatched.
	* @param listenerContext The context under which the listener will be executed (i.e. the object that should represent the `this` variable).
	* @param priority The priority level of the event listener. Listeners with higher priority will be executed before listeners with lower priority. Listeners with same priority level will be executed at the same order as they were added (default = 0)
	* @param args Additional arguments to pass to the callback (listener) function. They will be appended after any arguments usually dispatched. - Default: (none)
	* @return An Object representing the binding between the Signal and listener.
	*/
	function add(listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float, args:Rest<Dynamic>):phaser.SignalBinding;
	
	/**
	* Add a one-time listener - the listener is automatically removed after the first execution.
	* 
	* If there is as {@link Phaser.Signal#memorize memorized} event then it will be dispatched and
	* the listener will be removed immediately.
	* 
	* @param listener The function to call when this Signal is dispatched.
	* @param listenerContext The context under which the listener will be executed (i.e. the object that should represent the `this` variable).
	* @param priority The priority level of the event listener. Listeners with higher priority will be executed before listeners with lower priority. Listeners with same priority level will be executed at the same order as they were added (default = 0)
	* @param args Additional arguments to pass to the callback (listener) function. They will be appended after any arguments usually dispatched. - Default: (none)
	* @return An Object representing the binding between the Signal and listener.
	*/
	function addOnce(listener:Dynamic, ?listenerContext:Dynamic, ?priority:Float, args:Rest<Dynamic>):phaser.SignalBinding;
	
	/**
	* Dispatch / broadcast the event to all listeners.
	* 
	* To create an instance-bound dispatch for this Signal, use {@link Phaser.Signal#boundDispatch boundDispatch}.
	* 
	* @param params Parameters that should be passed to each handler.
	*/
	function dispatch(params:Rest<Dynamic>):Void;
	
	/**
	* Dispose the signal - no more events can be dispatched.
	* 
	* This removes all event listeners and clears references to external objects.
	* Calling methods on a disposed objects results in undefined behavior.
	*/
	function dispose():Void;
	
	/**
	* Forget the currently {@link Phaser.Signal#memorize memorized} event, if any.
	*/
	function forget():Void;
	
	/**
	* Gets the total number of listeners attached to this Signal.
	* 
	* @return Number of listeners attached to the Signal.
	*/
	function getNumListeners():Float;
	
	/**
	* Stop propagation of the event, blocking the dispatch to next listener on the queue.
	* 
	* This should be called only during event dispatch as calling it before/after dispatch won't affect another broadcast.
	* See {@link Phaser.Signal#active active} to enable/disable the signal entirely.
	*/
	function halt():Void;
	
	/**
	* Check if a specific listener is attached.
	* 
	* @param listener Signal handler function.
	* @param context Context on which listener will be executed (object that should represent the `this` variable inside listener function).
	* @return If Signal has the specified listener.
	*/
	function has(listener:Dynamic, ?context:Dynamic):Bool;
	
	/**
	* Remove a single event listener.
	* 
	* @param listener Handler function that should be removed.
	* @param context Execution context (since you can add the same handler multiple times if executing in a different context).
	* @return Listener handler function.
	*/
	function remove(listener:Dynamic, ?context:Dynamic):Dynamic;
	
	/**
	* Remove all event listeners.
	* 
	* @param context If specified only listeners for the given context will be removed.
	*/
	function removeAll(?context:Dynamic):Void;
	
	/**
	* A string representation of the object.
	* 
	* @return String representation of the object.
	*/
	function toString():String;
	
	/**
	* undefined
	* 
	* @param listener Signal handler function.
	* @param fnName Function name.
	*/
	function validateListener(listener:Dynamic, fnName:String):Void;
	
}

