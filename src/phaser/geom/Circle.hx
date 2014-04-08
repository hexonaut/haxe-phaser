package phaser.geom;

@:native("Phaser.Circle")
extern class Circle {
	function new (?x:Float = 0, ?y:Float = 0, ?diameter:Float = 0);
	var x:Float;
	var y:Float;
	var _diameter:Float;
	var _radius:Float;
	function circumference ():Float;
	function setTo (x:Float, y:Float, diameter:Float):Dynamic;
	function copyFrom (source:Dynamic):Dynamic;
	function copyTo (dest:Dynamic):Dynamic;
	function distance (dest:Dynamic, ?round:Bool):Float;
	function clone (out:phaser.geom.Circle):phaser.geom.Circle;
	function contains (x:Float, y:Float):Bool;
	function circumferencePoint (angle:Float, asDegrees:Bool, ?out:phaser.geom.Point):phaser.geom.Point;
	function offset (dx:Float, dy:Float):Dynamic;
	function offsetPoint (point:Dynamic):Dynamic;
	function toString ():String;
	var diameter:Float;
	var radius:Float;
	var right:Float;
	var top:Float;
	var bottom:Float;
	var area(default, null):Float;
	var empty:Bool;
	function equals (a:phaser.geom.Circle, b:phaser.geom.Circle):Bool;
	function intersects (a:phaser.geom.Circle, b:phaser.geom.Circle):Bool;
	function intersectsRectangle (c:phaser.geom.Circle, r:phaser.geom.Rectangle):Bool;
}
