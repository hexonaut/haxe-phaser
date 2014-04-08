package phaser.geom;

@:native("Phaser.Line")
extern class Line {
	function new (?x1:Float = 0, ?y1:Float = 0, ?x2:Float = 0, ?y2:Float = 0);
	var start:phaser.geom.Point;
	var end:phaser.geom.Point;
	function setTo (?x1:Float = 0, ?y1:Float = 0, ?x2:Float = 0, ?y2:Float = 0):phaser.geom.Line;
	function fromSprite (startSprite:phaser.gameobjects.Sprite, endSprite:phaser.gameobjects.Sprite, ?useCenter:Bool = true):phaser.geom.Line;
	function intersects (line:phaser.geom.Line, ?asSegment:Bool = true, ?result:phaser.geom.Point):phaser.geom.Point;
	function pointOnLine (x:Float, y:Float):Bool;
	function pointOnSegment (x:Float, y:Float):Bool;
	function coordinatesOnLine (?stepRate:Float = 1, ?results:Dynamic):Dynamic;
	var length(default, null):Float;
	var angle(default, null):Float;
	var slope(default, null):Float;
	var perpSlope(default, null):Float;
	var x(default, null):Float;
	var y(default, null):Float;
	var left(default, null):Float;
	var right(default, null):Float;
	var top(default, null):Float;
	var bottom(default, null):Float;
	var width(default, null):Float;
	var height(default, null):Float;
	function intersectsPoints (a:phaser.geom.Point, b:phaser.geom.Point, e:phaser.geom.Point, f:phaser.geom.Point, ?asSegment:Bool = true, ?result:phaser.geom.Point):phaser.geom.Point;
}
