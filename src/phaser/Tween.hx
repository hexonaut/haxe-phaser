package phaser;

import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
* A Tween allows you to alter one or more properties of a target object over a defined period of time.
* This can be used for things such as alpha fading Sprites, scaling them or motion.
* Use `Tween.to` or `Tween.from` to set-up the tween values. You can create multiple tweens on the same object
* by calling Tween.to multiple times on the same Tween. Additional tweens specified in this way become "child" tweens and
* are played through in sequence. You can use Tween.timeScale and Tween.reverse to control the playback of this Tween and all of its children.
*/
@:native("Phaser.Tween")
extern class Tween {

	/**
	* A Tween allows you to alter one or more properties of a target object over a defined period of time.
	* This can be used for things such as alpha fading Sprites, scaling them or motion.
	* Use `Tween.to` or `Tween.from` to set-up the tween values. You can create multiple tweens on the same object
	* by calling Tween.to multiple times on the same Tween. Additional tweens specified in this way become "child" tweens and
	* are played through in sequence. You can use Tween.timeScale and Tween.reverse to control the playback of this Tween and all of its children.
	* 
	* @param target The target object, such as a Phaser.Sprite or Phaser.Sprite.scale.
	* @param game Current game instance.
	* @param manager The TweenManager responsible for looking after this Tween.
	*/
	function new(target:Dynamic, game:phaser.Game, manager:phaser.TweenManager);
	
	/**
	* If this Tween is chained to another this holds a reference to it.
	*/
	var chainedTween:phaser.Tween;
	
	/**
	* The current Tween child being run.
	*/
	var current:Float;
	
	/**
	* Is this Tween frame or time based? A frame based tween will use the physics elapsed timer when updating. This means
	* it will retain the same consistent frame rate, regardless of the speed of the device. The duration value given should
	* be given in frames.
	* 
	* If the Tween uses a time based update (which is the default) then the duration is given in milliseconds.
	* In this situation a 2000ms tween will last exactly 2 seconds, regardless of the device and how many visual updates the tween
	* has actually been through. For very short tweens you may wish to experiment with a frame based update instead.
	* 
	* The default value is whatever you've set in TweenManager.frameBased.
	*/
	var frameBased:Bool;
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* If the tween is running this is set to true, otherwise false. Tweens that are in a delayed state or waiting to start are considered as being running.
	*/
	var isRunning:Bool;
	
	/**
	* Is this Tween paused or not?
	*/
	var isPaused:Bool;
	
	/**
	* Reference to the TweenManager responsible for updating this Tween.
	*/
	var manager:phaser.TweenManager;
	
	/**
	* The onChildComplete event is fired when the Tween or any of its children completes.
	* Fires every time a child completes unless a child is set to repeat forever.
	* It will be sent 2 parameters: the target object and this tween.
	*/
	var onChildComplete:phaser.Signal;
	
	/**
	* The onComplete event is fired when the Tween and all of its children completes. Does not fire if the Tween is set to loop or repeatAll(-1).
	* It will be sent 2 parameters: the target object and this tween.
	*/
	var onComplete:phaser.Signal;
	
	/**
	* The onLoop event is fired if the Tween, or any child tweens loop.
	* It will be sent 2 parameters: the target object and this tween.
	*/
	var onLoop:phaser.Signal;
	
	/**
	* The onRepeat event is fired if the Tween and all of its children repeats. If this tween has no children this will never be fired.
	* It will be sent 2 parameters: the target object and this tween.
	*/
	var onRepeat:phaser.Signal;
	
	/**
	* The onStart event is fired when the Tween begins. If there is a delay before the tween starts then onStart fires after the delay is finished.
	* It will be sent 2 parameters: the target object and this tween.
	*/
	var onStart:phaser.Signal;
	
	/**
	* True if this Tween is ready to be deleted by the TweenManager.
	*/
	var pendingDelete:Bool;
	
	/**
	* Target property cache used when building the child data values.
	*/
	var properties:Dynamic;
	
	/**
	* If the Tween and any child tweens are set to repeat this contains the current repeat count.
	*/
	var repeatCounter:Float;
	
	/**
	* If set to `true` the current tween will play in reverse.
	* If the tween hasn't yet started this has no effect.
	* If there are child tweens then all child tweens will play in reverse from the current point.
	*/
	var reverse:Bool;
	
	/**
	* The target object, such as a Phaser.Sprite or property like Phaser.Sprite.scale.
	*/
	var target:Dynamic;
	
	/**
	* An Array of TweenData objects that comprise the different parts of this Tween.
	*/
	var timeline:Array<phaser.TweenData>;
	
	/**
	* The speed at which the tweens will run. A value of 1 means it will match the game frame rate. 0.5 will run at half the frame rate. 2 at double the frame rate, etc.
	* If a tweens duration is 1 second but timeScale is 0.5 then it will take 2 seconds to complete.
	* Default: 1
	*/
	var timeScale:Float;
	
	/**
	* Gets the total duration of this Tween, including all child tweens, in milliseconds.
	*/
	var totalDuration:Float;
	
	/**
	* This method allows you to chain tweens together. Any tween chained to this tween will have its `Tween.start` method called
	* as soon as this tween completes. If this tween never completes (i.e. repeatAll or loop is set) then the chain will never progress.
	* Note that `Tween.onComplete` will fire when *this* tween completes, not when the whole chain completes.
	* For that you should listen to `onComplete` on the final tween in your chain.
	* 
	* If you pass multiple tweens to this method they will be joined into a single long chain.
	* For example if this is Tween A and you pass in B, C and D then B will be chained to A, C will be chained to B and D will be chained to C.
	* Any previously chained tweens that may have been set will be overwritten.
	* 
	* @param tweens One or more tweens that will be chained to this one.
	* @return This tween. Useful for method chaining.
	*/
	function chain(args:Rest<Dynamic>):phaser.Tween;
	
	/**
	* Sets the delay in milliseconds before this tween will start. If there are child tweens it sets the delay before the first child starts.
	* The delay is invoked as soon as you call `Tween.start`. If the tween is already running this method doesn't do anything for the current active tween.
	* If you have not yet called `Tween.to` or `Tween.from` at least once then this method will do nothing, as there are no tweens to delay.
	* If you have child tweens and pass -1 as the index value it sets the delay across all of them.
	* 
	* @param duration The amount of time in ms that the Tween should wait until it begins once started is called. Set to zero to remove any active delay.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set the delay on all the children.
	* @return This tween. Useful for method chaining.
	*/
	function delay(duration:Float, ?index:Float):phaser.Tween;
	
	/**
	* Set easing function this tween will use, i.e. Phaser.Easing.Linear.None.
	* The ease function allows you define the rate of change. You can pass either a function such as Phaser.Easing.Circular.Out or a string such as "Circ".
	* ".easeIn", ".easeOut" and "easeInOut" variants are all supported for all ease types.
	* If you have child tweens and pass -1 as the index value it sets the easing function defined here across all of them.
	* 
	* @param ease The easing function this tween will use, i.e. Phaser.Easing.Linear.None.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set the easing function on all children.
	* @return This tween. Useful for method chaining.
	*/
	@:overload(function(ease:String, ?index:Float):phaser.Tween{})
	function easing(ease:Dynamic, ?index:Float):phaser.Tween;
	
	/**
	* Sets this tween to be a `from` tween on the properties given. A `from` tween sets the target to the destination value and tweens to its current value.
	* For example a Sprite with an `x` coordinate of 100 tweened from `x` 500 would be set to `x` 500 and then tweened to `x` 100 by giving a properties object of `{ x: 500 }`.
	* The ease function allows you define the rate of change. You can pass either a function such as Phaser.Easing.Circular.Out or a string such as "Circ".
	* ".easeIn", ".easeOut" and "easeInOut" variants are all supported for all ease types.
	* 
	* @param properties An object containing the properties you want to tween., such as `Sprite.x` or `Sound.volume`. Given as a JavaScript object.
	* @param duration Duration of this tween in ms. Or if `Tween.frameBased` is true this represents the number of frames that should elapse. - Default: 1000
	* @param ease Easing function. If not set it will default to Phaser.Easing.Default, which is Phaser.Easing.Linear.None by default but can be over-ridden.
	* @param autoStart Set to `true` to allow this tween to start automatically. Otherwise call Tween.start().
	* @param delay Delay before this tween will start in milliseconds. Defaults to 0, no delay.
	* @param repeat Should the tween automatically restart once complete? If you want it to run forever set as -1. This only effects this individual tween, not any chained tweens.
	* @param yoyo A tween that yoyos will reverse itself and play backwards automatically. A yoyo'd tween doesn't fire the Tween.onComplete event, so listen for Tween.onLoop instead.
	* @return This Tween object.
	*/
	@:overload(function(properties:Dynamic, ?duration:Float, ?ease:String, ?autoStart:Bool, ?delay:Float, ?repeat:Float, ?yoyo:Bool):phaser.Tween{})
	function from(properties:Dynamic, ?duration:Float, ?ease:Dynamic, ?autoStart:Bool, ?delay:Float, ?repeat:Float, ?yoyo:Bool):phaser.Tween;
	
	/**
	* This will generate an array populated with the tweened object values from start to end.
	* It works by running the tween simulation at the given frame rate based on the values set-up in Tween.to and Tween.from.
	* It ignores delay and repeat counts and any chained tweens, but does include child tweens.
	* Just one play through of the tween data is returned, including yoyo if set.
	* 
	* @param frameRate The speed in frames per second that the data should be generated at. The higher the value, the larger the array it creates. - Default: 60
	* @param data If given the generated data will be appended to this array, otherwise a new array will be returned.
	* @return An array of tweened values.
	*/
	function generateData(?frameRate:Float, ?data:Dynamic):Array<Dynamic>;
	
	/**
	* Sets the interpolation function the tween will use. By default it uses Phaser.Math.linearInterpolation.
	* Also available: Phaser.Math.bezierInterpolation and Phaser.Math.catmullRomInterpolation.
	* The interpolation function is only used if the target properties is an array.
	* If you have child tweens and pass -1 as the index value and it will set the interpolation function across all of them.
	* 
	* @param interpolation The interpolation function to use (Phaser.Math.linearInterpolation by default)
	* @param context The context under which the interpolation function will be run.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set the interpolation function on all children.
	* @return This tween. Useful for method chaining.
	*/
	function interpolation(interpolation:Dynamic, ?context:Dynamic, ?index:Float):phaser.Tween;
	
	/**
	* Enables the looping of this tween. The tween will loop forever, and onComplete will never fire.
	* 
	* If `value` is `true` then this is the same as setting `Tween.repeatAll(-1)`.
	* If `value` is `false` it is the same as setting `Tween.repeatAll(0)` and will reset the `repeatCounter` to zero.
	* 
	* Usage:
	* game.add.tween(p).to({ x: 700 }, 1000, Phaser.Easing.Linear.None, true)
	* .to({ y: 300 }, 1000, Phaser.Easing.Linear.None)
	* .to({ x: 0 }, 1000, Phaser.Easing.Linear.None)
	* .to({ y: 0 }, 1000, Phaser.Easing.Linear.None)
	* .loop();
	* 
	* @param value If `true` this tween will loop once it reaches the end. Set to `false` to remove an active loop. - Default: true
	* @return This tween. Useful for method chaining.
	*/
	function loop(?value:Bool):phaser.Tween;
	
	/**
	* Sets a callback to be fired each time this tween updates.
	* 
	* @param callback The callback to invoke each time this tween is updated. Set to `null` to remove an already active callback.
	* @param callbackContext The context in which to call the onUpdate callback.
	* @return This tween. Useful for method chaining.
	*/
	function onUpdateCallback(callback:Dynamic, ?callbackContext:Dynamic):phaser.Tween;
	
	/**
	* Pauses the tween. Resume playback with Tween.resume.
	*/
	function pause():Void;
	
	/**
	* Sets the number of times this tween will repeat.
	* If you have not yet called `Tween.to` or `Tween.from` at least once then this method will do nothing, as there are no tweens to repeat.
	* If you have child tweens and pass -1 as the index value it sets the number of times they'll repeat across all of them.
	* If you wish to define how many times this Tween and all children will repeat see Tween.repeatAll.
	* 
	* @param total How many times a tween should repeat before completing. Set to zero to remove an active repeat. Set to -1 to repeat forever.
	* @param repeat This is the amount of time to pause (in ms) before the repeat will start.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set the repeat value on all the children.
	* @return This tween. Useful for method chaining.
	*/
	function repeat(total:Float, ?repeatDelay:Float, ?index:Float):phaser.Tween;
	
	/**
	* Sets the delay in milliseconds before this tween will repeat itself.
	* The repeatDelay is invoked as soon as you call `Tween.start`. If the tween is already running this method doesn't do anything for the current active tween.
	* If you have not yet called `Tween.to` or `Tween.from` at least once then this method will do nothing, as there are no tweens to set repeatDelay on.
	* If you have child tweens and pass -1 as the index value it sets the repeatDelay across all of them.
	* 
	* @param duration The amount of time in ms that the Tween should wait until it repeats or yoyos once start is called. Set to zero to remove any active repeatDelay.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set the repeatDelay on all the children.
	* @return This tween. Useful for method chaining.
	*/
	function repeatDelay(duration:Float, ?index:Float):phaser.Tween;
	
	/**
	* Set how many times this tween and all of its children will repeat.
	* A tween (A) with 3 children (B,C,D) with a `repeatAll` value of 2 would play as: ABCDABCD before completing.
	* 
	* @param total How many times this tween and all children should repeat before completing. Set to zero to remove an active repeat. Set to -1 to repeat forever.
	* @return This tween. Useful for method chaining.
	*/
	function repeatAll(?total:Float):phaser.Tween;
	
	/**
	* Resumes a paused tween.
	*/
	function resume():Void;
	
	/**
	* Starts the tween running. Can also be called by the autoStart parameter of `Tween.to` or `Tween.from`.
	* This sets the `Tween.isRunning` property to `true` and dispatches a `Tween.onStart` signal.
	* If the Tween has a delay set then nothing will start tweening until the delay has expired.
	* 
	* @param index If this Tween contains child tweens you can specify which one to start from. The default is zero, i.e. the first tween created.
	* @return This tween. Useful for method chaining.
	*/
	function start(?index:Float):phaser.Tween;
	
	/**
	* Stops the tween if running and flags it for deletion from the TweenManager.
	* If called directly the `Tween.onComplete` signal is not dispatched and no chained tweens are started unless the complete parameter is set to `true`.
	* If you just wish to pause a tween then use Tween.pause instead.
	* 
	* @param complete Set to `true` to dispatch the Tween.onComplete signal.
	* @return This tween. Useful for method chaining.
	*/
	function stop(?complete:Bool):phaser.Tween;
	
	/**
	* Sets this tween to be a `to` tween on the properties given. A `to` tween starts at the current value and tweens to the destination value given.
	* For example a Sprite with an `x` coordinate of 100 could be tweened to `x` 200 by giving a properties object of `{ x: 200 }`.
	* The ease function allows you define the rate of change. You can pass either a function such as Phaser.Easing.Circular.Out or a string such as "Circ".
	* ".easeIn", ".easeOut" and "easeInOut" variants are all supported for all ease types.
	* 
	* @param properties An object containing the properties you want to tween, such as `Sprite.x` or `Sound.volume`. Given as a JavaScript object.
	* @param duration Duration of this tween in ms. Or if `Tween.frameBased` is true this represents the number of frames that should elapse. - Default: 1000
	* @param ease Easing function. If not set it will default to Phaser.Easing.Default, which is Phaser.Easing.Linear.None by default but can be over-ridden.
	* @param autoStart Set to `true` to allow this tween to start automatically. Otherwise call Tween.start().
	* @param delay Delay before this tween will start in milliseconds. Defaults to 0, no delay.
	* @param repeat Should the tween automatically restart once complete? If you want it to run forever set as -1. This only effects this individual tween, not any chained tweens.
	* @param yoyo A tween that yoyos will reverse itself and play backwards automatically. A yoyo'd tween doesn't fire the Tween.onComplete event, so listen for Tween.onLoop instead.
	* @return This Tween object.
	*/
	@:overload(function(properties:Dynamic, ?duration:Float, ?ease:String, ?autoStart:Bool, ?delay:Float, ?repeat:Float, ?yoyo:Bool):phaser.Tween{})
	function to(properties:Dynamic, ?duration:Float, ?ease:Dynamic, ?autoStart:Bool, ?delay:Float, ?repeat:Float, ?yoyo:Bool):phaser.Tween;
	
	/**
	* Core tween update function called by the TweenManager. Does not need to be invoked directly.
	* 
	* @param time A timestamp passed in by the TweenManager.
	* @return false if the tween and all child tweens have completed and should be deleted from the manager, otherwise true (still active).
	*/
	function update(time:Float):Bool;
	
	/**
	* Updates either a single TweenData or all TweenData objects properties to the given value.
	* Used internally by methods like Tween.delay, Tween.yoyo, etc. but can also be called directly if you know which property you want to tweak.
	* The property is not checked, so if you pass an invalid one you'll generate a run-time error.
	* 
	* @param property The property to update.
	* @param value The value to set the property to.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set the delay on all the children.
	* @return This tween. Useful for method chaining.
	*/
	function updateTweenData(property:String, value:EitherType<Float, Dynamic>, ?index:Float):phaser.Tween;
	
	/**
	* A Tween that has yoyo set to true will run through from its starting values to its end values and then play back in reverse from end to start.
	* Used in combination with repeat you can create endless loops.
	* If you have not yet called `Tween.to` or `Tween.from` at least once then this method will do nothing, as there are no tweens to yoyo.
	* If you have child tweens and pass -1 as the index value it sets the yoyo property across all of them.
	* If you wish to yoyo this Tween and all of its children then see Tween.yoyoAll.
	* 
	* @param enable Set to true to yoyo this tween, or false to disable an already active yoyo.
	* @param yoyoDelay This is the amount of time to pause (in ms) before the yoyo will start.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set yoyo on all the children.
	* @return This tween. Useful for method chaining.
	*/
	function yoyo(enable:Bool, ?yoyoDelay:Float, ?index:Float):phaser.Tween;
	
	/**
	* Sets the delay in milliseconds before this tween will run a yoyo (only applies if yoyo is enabled).
	* The repeatDelay is invoked as soon as you call `Tween.start`. If the tween is already running this method doesn't do anything for the current active tween.
	* If you have not yet called `Tween.to` or `Tween.from` at least once then this method will do nothing, as there are no tweens to set repeatDelay on.
	* If you have child tweens and pass -1 as the index value it sets the repeatDelay across all of them.
	* 
	* @param duration The amount of time in ms that the Tween should wait until it repeats or yoyos once start is called. Set to zero to remove any active yoyoDelay.
	* @param index If this tween has more than one child this allows you to target a specific child. If set to -1 it will set the yoyoDelay on all the children.
	* @return This tween. Useful for method chaining.
	*/
	function yoyoDelay(duration:Float, ?index:Float):phaser.Tween;
	
}

