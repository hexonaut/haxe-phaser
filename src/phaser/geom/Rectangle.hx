package phaser.geom;

@:native("Phaser.Rectangle")
extern class Rectangle {
	function new (x:Float, y:Float, width:Float, height:Float);
	var x:Float;
	var y:Float;
	var width:Float;
	var height:Float;
	function offset (dx:Float, dy:Float):phaser.geom.Rectangle;
	function offsetPoint (point:phaser.geom.Point):phaser.geom.Rectangle;
	function setTo (x:Float, y:Float, width:Float, height:Float):phaser.geom.Rectangle;
	function floor ():Void;
	function floorAll ():Void;
	function copyFrom (source:Dynamic):phaser.geom.Rectangle;
	function copyTo (source:Dynamic):Dynamic;
	function inflate (dx:Float, dy:Float):phaser.geom.Rectangle;
	function size (?output:phaser.geom.Point):phaser.geom.Point;
	function clone (?output:phaser.geom.Rectangle):phaser.geom.Rectangle;
	function contains (x:Float, y:Float):Bool;
	function containsRect (b:phaser.geom.Rectangle):Bool;
	function equals (b:phaser.geom.Rectangle):Bool;
	function intersection (b:phaser.geom.Rectangle, out:phaser.geom.Rectangle):phaser.geom.Rectangle;
	function intersects (b:phaser.geom.Rectangle, tolerance:Float):Bool;
	function intersectsRaw (left:Float, right:Float, top:Float, bottomt:Float, tolerance:Float):Bool;
	function union (b:phaser.geom.Rectangle, ?out:phaser.geom.Rectangle):phaser.geom.Rectangle;
	function toString ():String;
	var halfWidth(default, null):Float;
	var halfHeight(default, null):Float;
	var bottom:Float;
	var bottomRight:phaser.geom.Point;
	var left:Float;
	var right:Float;
	var volume(default, null):Float;
	var perimeter(default, null):Float;
	var centerX:Float;
	var centerY:Float;
	var top:Float;
	var topLeft:phaser.geom.Point;
	var empty:Bool;
	function inflatePoint (a:phaser.geom.Rectangle, point:phaser.geom.Point):phaser.geom.Rectangle;
	function containsRaw (rx:Float, ry:Float, rw:Float, rh:Float, x:Float, y:Float):Bool;
	function containsPoint (a:phaser.geom.Rectangle, point:phaser.geom.Point):Bool;
}
