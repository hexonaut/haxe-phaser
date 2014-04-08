package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.Circle")
extern class Circle {
	function new (body:phaser.physics.ninja.Body, x:Float, y:Float, radius:Float);
	var body:phaser.physics.ninja.Body;
	var system:phaser.physics.ninja.World;
	var pos:phaser.geom.Point;
	var oldpos:phaser.geom.Point;
	var radius:Float;
	var xw(default, null):Float;
	var yw(default, null):Float;
	var width(default, null):Float;
	var height(default, null):Float;
	var oH:Float;
	var oV:Float;
	var velocity:phaser.geom.Point;
	var circleTileProjections:Dynamic;
	function integrate ():Void;
	function reportCollisionVsWorld (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	function collideWorldBounds ():Void;
	function collideCircleVsTile (t:phaser.physics.ninja.Tile):Bool;
	function resolveCircleTile (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_Full (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_45Deg (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_Concave (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_Convex (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_Half (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_22DegS (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_22DegB (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_67DegS (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function projCircle_67DegB (x:Float, y:Float, oH:Float, oV:Float, obj:phaser.physics.ninja.Circle, t:phaser.physics.ninja.Tile):Float;
	function destroy ():Void;
}
