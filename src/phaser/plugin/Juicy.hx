package phaser.plugin;

/**
* Creates a new `Juicy` object.
*/
@:native("Phaser.Plugin.Juicy")
extern class Juicy extends phaser.Plugin {

	/**
	* Creates a new `Juicy` object.
	* 
	* @param game Current game instance.
	*/
	function new(game:phaser.Game);
	
	/**
	* Creates a 'Juicy.ScreenFlash' object
	* 
	* @param color The color of the screen flash
	*/
	function createScreenFlash(?color:String):phaser.plugin.juicy.ScreenFlash;
	
	/**
	* Creates a 'Juicy.Trail' object
	* 
	* @param length The length of the trail
	* @param color The color of the trail
	*/
	function createTrail(?length:Float, ?color:Float):phaser.plugin.juicy.Trail;
	
	/**
	* Creates the over scale effect on the given object
	* 
	* @param object The object to over scale
	* @param scale The scale amount to overscale by - Default: 1.5
	* @param initialScale The initial scale of the object - Default: new Phaser.Point(1,1)
	*/
	function overScale(object:phaser.Sprite, ?scale:Float, ?initialScale:phaser.Point):Void;
	
	/**
	* Creates the jelly effect on the given object
	* 
	* @param object The object to gelatinize
	* @param strength The strength of the effect - Default: 0.2
	* @param delay The delay of the snap-back tween. 50ms are automaticallly added to whatever the delay amount is.
	* @param initialScale The initial scale of the object - Default: new Phaser.Point(1,1)
	*/
	function jelly(object:phaser.Sprite, ?strength:Float, ?delay:Float, ?initialScale:phaser.Point):Void;
	
	/**
	* Creates the mouse stretch effect on the given object
	* 
	* @param object The object to mouse stretch
	* @param strength The strength of the effect - Default: 0.5
	* @param initialScale The initial scale of the object - Default: new Phaser.Point(1,1)
	*/
	function mouseStretch(object:phaser.Sprite, ?strength:Float, ?initialScale:phaser.Point):Void;
	
	/**
	* Runs the core update function and causes screen shake and overscaling effects to occur if they are queued to do so.
	*/
	@:native("update")
	function Juicy_update():Void;
	
	/**
	* Begins the screen shake effect
	* 
	* @param duration The duration of the screen shake - Default: 20
	* @param strength The strength of the screen shake - Default: 20
	*/
	function shake(?duration:Float, ?strength:Float):Void;
	
}

