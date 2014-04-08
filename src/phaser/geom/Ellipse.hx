package phaser.geom;

@:native("Phaser.Ellipse")
extern class Ellipse {
	function new (?x:Float = 0, ?y:Float = 0, ?width:Float = 0, ?height:Float = 0);
	var x:Float;
	var y:Float;
	var width:Float;
	var height:Float;
	function setTo (x:Float, y:Float, width:Float, height:Float):phaser.geom.Ellipse;
	function copyFrom (source:Dynamic):phaser.geom.Ellipse;
	function copyTo (dest:Dynamic):Dynamic;
	function clone (out:phaser.geom.Ellipse):phaser.geom.Ellipse;
	function contains (x:Float, y:Float):Bool;
	function toString ():String;
	var right:Float;
	var top:Float;
	var bottom:Float;
	var empty:Bool;
	function getBounds ():phaser.geom.Rectangle;
}
