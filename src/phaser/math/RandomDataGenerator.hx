package phaser.math;

@:native("Phaser.RandomDataGenerator")
extern class RandomDataGenerator {
	function new (seeds:Dynamic);
	var c:Float;
	var s0:Float;
	var s1:Float;
	var s2:Float;
	function rnd ():Float;
	function sow (seeds:Dynamic):Void;
	function hash (data:Dynamic):Float;
	function integer ():Float;
	function frac ():Float;
	function real ():Float;
	function integerInRange (min:Float, max:Float):Float;
	function realInRange (min:Float, max:Float):Float;
	function normal ():Float;
	function uuid ():String;
	function pick (ary:Array<Dynamic>):Dynamic;
	function weightedPick (ary:Array<Dynamic>):Dynamic;
	function timestamp (min:Float, max:Float):Float;
	function angle ():Float;
}
