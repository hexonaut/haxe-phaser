package phaser.physics.ninja;

@:native("Phaser.Physics.Ninja.AABB")
extern class AABB {
	function new (body:phaser.physics.ninja.Body, x:Float, y:Float, width:Float, height:Float);
	var body:phaser.physics.ninja.Body;
	var system:phaser.physics.ninja.World;
	var pos:phaser.geom.Point;
	var oldpos:phaser.geom.Point;
	var xw(default, null):Float;
	var yw(default, null):Float;
	var width(default, null):Float;
	var height(default, null):Float;
	var oH:Float;
	var oV:Float;
	var velocity:phaser.geom.Point;
	var aabbTileProjections:Dynamic;
	function integrate ():Void;
	function reportCollisionVsWorld (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	function reportCollisionVsBody (px:Float, py:Float, dx:Float, dy:Float, obj:Float):Void;
	function collideWorldBounds ():Void;
	function collideAABBVsAABB (aabb:phaser.physics.ninja.AABB):Void;
	function collideAABBVsTile (tile:phaser.physics.ninja.Tile):Void;
	function resolveTile (x:Float, y:Float, body:phaser.physics.ninja.AABB, tile:phaser.physics.ninja.Tile):Bool;
	function projAABB_Full (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_Half (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_45Deg (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_22DegS (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_22DegB (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_67DegS (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_67DegB (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_Convex (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function projAABB_Concave (x:Float, y:Float, obj:phaser.physics.ninja.AABB, t:phaser.physics.ninja.Tile):Float;
	function destroy ():Void;
}
