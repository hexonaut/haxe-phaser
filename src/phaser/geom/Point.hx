package phaser.geom;

@:native("Phaser.Point")
extern class Point {
	function new (x:Float, y:Float);
	var x:Float;
	var y:Float;
	function copyFrom (source:Dynamic):Dynamic;
	function invert ():Dynamic;
	function setTo (x:Float, y:Float):Dynamic;
	function set (x:Float, y:Float):Dynamic;
	function add (x:Float, y:Float):phaser.geom.Point;
	function subtract (x:Float, y:Float):phaser.geom.Point;
	function multiply (x:Float, y:Float):phaser.geom.Point;
	function divide (x:Float, y:Float):phaser.geom.Point;
	function clampX (min:Float, max:Float):phaser.geom.Point;
	function clampY (min:Float, max:Float):phaser.geom.Point;
	function clamp (min:Float, max:Float):phaser.geom.Point;
	function clone (?output:phaser.geom.Point):phaser.geom.Point;
	function copyTo (dest:Dynamic):Dynamic;
	function distance (dest:Dynamic, ?round:Bool):Float;
	function equals (a:phaser.geom.Point):Bool;
	function rotate (x:Float, y:Float, angle:Float, asDegrees:Bool, ?distance:Float):phaser.geom.Point;
	function getMagnitude ():Float;
	function setMagnitude (magnitude:Float):phaser.geom.Point;
	function normalize ():phaser.geom.Point;
	function isZero ():Bool;
	function toString ():String;
}
