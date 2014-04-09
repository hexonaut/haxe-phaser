package phaser.physics.p2;

@:native("Phaser.Physics.P2")
extern class World {
	function new (game:phaser.core.Game, ?config:Dynamic);
	var game:phaser.core.Game;
	var world:Dynamic;
	var frameRate:Float;
	var useElapsedTime:Bool;
	var materials:Dynamic;
	var gravity:Dynamic;
	var bounds:Dynamic;
	var _wallShapes:Dynamic;
	var onBodyAdded:phaser.core.Signal;
	var onBodyRemoved:phaser.core.Signal;
	var onSpringAdded:phaser.core.Signal;
	var onSpringRemoved:phaser.core.Signal;
	var onConstraintAdded:phaser.core.Signal;
	var onConstraintRemoved:phaser.core.Signal;
	var onContactMaterialAdded:phaser.core.Signal;
	var onContactMaterialRemoved:phaser.core.Signal;
	var onBeginContact:phaser.core.Signal;
	var onEndContact:phaser.core.Signal;
	var _toRemove:Dynamic;
	var collisionGroups:Dynamic;
	var _collisionGroupID:Float;
	static var LIME_CORONA_JSON:Float;
	function removeBodyNextStep (body:phaser.physics.p2.Body):Void;
	function preUpdate ():Void;
	@:overload(function (object:Dynamic, ?debug:Bool = false, ?children:Bool = true):Void {})
	@:overload(function (object:Dynamic, ?debug:Bool = false, ?children:Bool = true):Void {})
	function enable (object:phaser.core.Group, ?debug:Bool = false, ?children:Bool = true):Void;
	function enableBody (object:Dynamic, debug:Bool):Void;
	function setImpactEvents (state:Bool):Void;
	function setPostBroadphaseCallback (callback:Dynamic, context:Dynamic):Void;
	function postBroadphaseHandler (event:Dynamic):Void;
	function impactHandler (event:Dynamic):Void;
	function beginContactHandler (event:Dynamic):Void;
	function endContactHandler (event:Dynamic):Void;
	function setBoundsToWorld (?left:Bool = true, ?right:Bool = true, ?top:Bool = true, ?bottom:Bool = true, ?setCollisionGroup:Bool = true):Void;
	function setWorldMaterial (material:phaser.physics.p2.Material, ?left:Bool = true, ?right:Bool = true, ?top:Bool = true, ?bottom:Bool = true):Void;
	function updateBoundsCollisionGroup (?setCollisionGroup:Bool = true):Void;
	function setBounds (x:Float, y:Float, width:Float, height:Float, ?left:Bool = true, ?right:Bool = true, ?top:Bool = true, ?bottom:Bool = true, ?setCollisionGroup:Bool = true):Void;
	function clear ():Void;
	function destroy ():Void;
	function addBody (body:phaser.physics.p2.Body):Bool;
	function removeBody (body:phaser.physics.p2.Body):phaser.physics.p2.Body;
	function addSpring (spring:phaser.physics.p2.Spring):phaser.physics.p2.Spring;
	function removeSpring (spring:phaser.physics.p2.Spring):phaser.physics.p2.Spring;
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	function createDistanceConstraint (bodyA:Dynamic, bodyB:Dynamic, distance:Float, ?maxForce:Float):phaser.physics.p2.DistanceConstraint;
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	function createGearConstraint (bodyA:Dynamic, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint;
	@:overload(function (bodyA:phaser.gameobjects.Sprite, pivotA:Array<Dynamic>, bodyB:phaser.gameobjects.Sprite, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, pivotA:Array<Dynamic>, bodyB:phaser.gameobjects.Sprite, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:Dynamic, pivotA:Array<Dynamic>, bodyB:phaser.gameobjects.Sprite, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, pivotA:Array<Dynamic>, bodyB:phaser.physics.p2.Body, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, pivotA:Array<Dynamic>, bodyB:phaser.physics.p2.Body, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:Dynamic, pivotA:Array<Dynamic>, bodyB:phaser.physics.p2.Body, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, pivotA:Array<Dynamic>, bodyB:Dynamic, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, pivotA:Array<Dynamic>, bodyB:Dynamic, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint {})
	function createRevoluteConstraint (bodyA:Dynamic, pivotA:Array<Dynamic>, bodyB:Dynamic, pivotB:Array<Dynamic>, ?maxForce:Float = 0):phaser.physics.p2.RevoluteConstraint;
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	function createLockConstraint (bodyA:Dynamic, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint;
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	function createPrismaticConstraint (bodyA:Dynamic, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint;
	function addConstraint (constraint:Dynamic):Dynamic;
	function removeConstraint (constraint:Dynamic):Dynamic;
	function addContactMaterial (material:phaser.physics.p2.ContactMaterial):phaser.physics.p2.ContactMaterial;
	function removeContactMaterial (material:phaser.physics.p2.ContactMaterial):phaser.physics.p2.ContactMaterial;
	function getContactMaterial (materialA:phaser.physics.p2.Material, materialB:phaser.physics.p2.Material):Dynamic;
	function setMaterial (material:phaser.physics.p2.Material, bodies:Dynamic):Void;
	function createMaterial (?name:String, ?body:phaser.physics.p2.Body):phaser.physics.p2.Material;
	function createContactMaterial (?materialA:phaser.physics.p2.Material, ?materialB:phaser.physics.p2.Material, ?options:Dynamic):phaser.physics.p2.ContactMaterial;
	function getBodies ():Dynamic;
	function getBody (object:Dynamic):Dynamic;
	function getSprings ():Dynamic;
	function getConstraints ():Dynamic;
	@:overload(function (worldPoint:phaser.geom.Point, ?bodies:Dynamic, ?precision:Float = 5, ?filterStatic:Bool = false):Array<Dynamic> {})
	@:overload(function (worldPoint:phaser.geom.Point, ?bodies:phaser.gameobjects.Sprite, ?precision:Float = 5, ?filterStatic:Bool = false):Array<Dynamic> {})
	function hitTest (worldPoint:phaser.geom.Point, ?bodies:Dynamic, ?precision:Float = 5, ?filterStatic:Bool = false):Array<Dynamic>;
	function toJSON ():Dynamic;
	@:overload(function (?object:phaser.core.Group):Void {})
	function createCollisionGroup (?object:phaser.gameobjects.Sprite):Void;
	@:overload(function (object:phaser.core.Group, group:Dynamic):Void {})
	function setCollisionGroup (object:phaser.gameobjects.Sprite, group:Dynamic):Void;
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	function createSpring (bodyA:Dynamic, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring;
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Bool, points:Dynamic):phaser.physics.p2.Body {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Float, points:Dynamic):phaser.physics.p2.Body {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Bool, points:Dynamic):phaser.physics.p2.Body {})
	function createBody (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Float, points:Dynamic):phaser.physics.p2.Body;
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Bool, points:Dynamic):Void {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Float, points:Dynamic):Void {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Bool, points:Dynamic):Void {})
	function createParticle (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, options:Dynamic, options:Bool, options:Bool, options:Float, points:Dynamic):Void;
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float, ?addToWorld:Bool = true):Dynamic {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String, ?addToWorld:Bool = true):Dynamic {})
	function convertCollisionObjects (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer, ?addToWorld:Bool = true):Dynamic;
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float):Void {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String):Void {})
	function clearTilemapLayerBodies (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer):Void;
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float, ?addToWorld:Bool = true, ?optimize:Bool = true):Dynamic {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String, ?addToWorld:Bool = true, ?optimize:Bool = true):Dynamic {})
	function convertTilemap (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer, ?addToWorld:Bool = true, ?optimize:Bool = true):Dynamic;
	function mpx (v:Float):Float;
	function pxm (v:Float):Float;
	function mpxi (v:Float):Float;
	function pxmi (v:Float):Float;
	var friction:Float;
	var restitution:Float;
	var applySpringForces:Bool;
	var applyDamping:Bool;
	var applyGravity:Bool;
	var solveConstraints:Bool;
	var time(default, null):Bool;
	var emitImpactEvent:Bool;
	var enableBodySleeping:Bool;
	var total(default, null):Float;
}
