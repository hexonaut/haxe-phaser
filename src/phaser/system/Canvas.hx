package phaser.system;

@:native("Phaser.Canvas")
extern class Canvas {
	function create (?width:Float = 256, ?height:Float = 256, ?id:String = '', ?noCocoon:Bool = false):Dynamic;
	function getOffset (element:Dynamic, ?point:phaser.geom.Point):phaser.geom.Point;
	function getAspectRatio (canvas:Dynamic):Float;
	function setBackgroundColor (canvas:Dynamic, ?color:String):Dynamic;
	function setTouchAction (canvas:Dynamic, ?value:String):Dynamic;
	function setUserSelect (canvas:Dynamic, ?value:String):Dynamic;
	function addToDOM (canvas:Dynamic, parent:String, ?overflowHidden:Bool = true):Dynamic;
	function setTransform (context:Dynamic, translateX:Float, translateY:Float, scaleX:Float, scaleY:Float, skewX:Float, skewY:Float):Dynamic;
	function setSmoothingEnabled (context:Dynamic, value:Bool):Dynamic;
	function setImageRenderingCrisp (canvas:Dynamic):Dynamic;
	function setImageRenderingBicubic (canvas:Dynamic):Dynamic;
}
