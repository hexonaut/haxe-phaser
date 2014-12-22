package phaser.physics.p2;

@:native("Phaser.Physics.P2")
extern class World {
	
	/**
	 * This is your main access to the P2 Physics World.
	 * From here you can create materials, listen for events and add bodies into the physics simulation.
	 */
	function new (game:phaser.core.Game, ?config:Dynamic);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The p2 World configuration object.
	 */
	var config:Dynamic;
	
	/**
	 * The p2 World in which the simulation is run.
	 */
	var world:Dynamic;
	
	/**
	 * The frame rate the world will be stepped at. Defaults to 1 / 60, but you can change here. Also see useElapsedTime property.
	 */
	var frameRate:Float;
	
	/**
	 * If true the frameRate value will be ignored and instead p2 will step with the value of Game.Time.physicsElapsed, which is a delta time value.
	 */
	var useElapsedTime:Bool;
	
	/**
	 * The paused state of the P2 World.
	 */
	var paused:Bool;
	
	/**
	 * A local array of all created Materials.
	 */
	var materials:Dynamic;
	
	/**
	 * The gravity applied to all bodies each step.
	 */
	var gravity:phaser.physics.p2.InversePointProxy;
	
	/**
	 * An object containing the 4 wall bodies that bound the physics world.
	 */
	var walls:Dynamic;
	
	/**
	 * Dispatched when a new Body is added to the World.
	 */
	var onBodyAdded:phaser.core.Signal;
	
	/**
	 * Dispatched when a Body is removed from the World.
	 */
	var onBodyRemoved:phaser.core.Signal;
	
	/**
	 * Dispatched when a new Spring is added to the World.
	 */
	var onSpringAdded:phaser.core.Signal;
	
	/**
	 * Dispatched when a Spring is removed from the World.
	 */
	var onSpringRemoved:phaser.core.Signal;
	
	/**
	 * Dispatched when a new Constraint is added to the World.
	 */
	var onConstraintAdded:phaser.core.Signal;
	
	/**
	 * Dispatched when a Constraint is removed from the World.
	 */
	var onConstraintRemoved:phaser.core.Signal;
	
	/**
	 * Dispatched when a new ContactMaterial is added to the World.
	 */
	var onContactMaterialAdded:phaser.core.Signal;
	
	/**
	 * Dispatched when a ContactMaterial is removed from the World.
	 */
	var onContactMaterialRemoved:phaser.core.Signal;
	
	/**
	 * A postBroadphase callback.
	 */
	var postBroadphaseCallback:Dynamic;
	
	/**
	 * The context under which the callbacks are fired.
	 */
	var callbackContext:Dynamic;
	
	/**
	 * Dispatched when a first contact is created between two bodies. This event is fired before the step has been done.
	 */
	var onBeginContact:phaser.core.Signal;
	
	/**
	 * Dispatched when final contact occurs between two bodies. This event is fired before the step has been done.
	 */
	var onEndContact:phaser.core.Signal;
	
	/**
	 * An array containing the collision groups that have been defined in the World.
	 */
	var collisionGroups:Array<Dynamic>;
	
	/**
	 * A default collision group.
	 */
	var nothingCollisionGroup:phaser.physics.p2.CollisionGroup;
	
	/**
	 * A default collision group.
	 */
	var boundsCollisionGroup:phaser.physics.p2.CollisionGroup;
	
	/**
	 * A default collision group.
	 */
	var everythingCollisionGroup:phaser.physics.p2.CollisionGroup;
	
	/**
	 * An array of the bodies the world bounds collides with.
	 */
	var boundsCollidesWith:Array<Dynamic>;
	
	/**
	 * Internal var used to hold references to bodies to remove from the world on the next step.
	 */
	var _toRemove:Array<Dynamic>;
	
	/**
	 * Internal var.
	 */
	var _collisionGroupID:Float;
	
	/**
	 * This will add a P2 Physics body into the removal list for the next step.
	 */
	function removeBodyNextStep (body:phaser.physics.p2.Body):Void;
	
	/**
	 * Called at the start of the core update loop. Purges flagged bodies from the world.
	 */
	function preUpdate ():Void;
	
	/**
	 * This will create a P2 Physics body on the given game object or array of game objects.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	 * Note: When the game object is enabled for P2 physics it has its anchor x/y set to 0.5 so it becomes centered.
	 */
	@:overload(function (object:Dynamic, ?debug:Bool = false, ?children:Bool = true):Void {})
	@:overload(function (object:Array<Dynamic>, ?debug:Bool = false, ?children:Bool = true):Void {})
	function enable (object:phaser.core.Group, ?debug:Bool = false, ?children:Bool = true):Void;
	
	/**
	 * Creates a P2 Physics body on the given game object.
	 * A game object can only have 1 physics body active at any one time, and it can't be changed until the body is nulled.
	 */
	function enableBody (object:Dynamic, debug:Bool):Void;
	
	/**
	 * Impact event handling is disabled by default. Enable it before any impact events will be dispatched.
	 * In a busy world hundreds of impact events can be generated every step, so only enable this if you cannot do what you need via beginContact or collision masks.
	 */
	function setImpactEvents (state:Bool):Void;
	
	/**
	 * Sets a callback to be fired after the Broadphase has collected collision pairs in the world.
	 * Just because a pair exists it doesn't mean they <em>will</em> collide, just that they potentially could do.
	 * If your calback returns false the pair will be removed from the narrowphase. This will stop them testing for collision this step.
	 * Returning true from the callback will ensure they are checked in the narrowphase.
	 */
	function setPostBroadphaseCallback (callback:Dynamic, context:Dynamic):Void;
	
	/**
	 * Internal handler for the postBroadphase event.
	 */
	function postBroadphaseHandler (event:Dynamic):Void;
	
	/**
	 * Handles a p2 impact event.
	 */
	function impactHandler (event:Dynamic):Void;
	
	/**
	 * Handles a p2 begin contact event.
	 */
	function beginContactHandler (event:Dynamic):Void;
	
	/**
	 * Handles a p2 end contact event.
	 */
	function endContactHandler (event:Dynamic):Void;
	
	/**
	 * Sets the bounds of the Physics world to match the Game.World dimensions.
	 * You can optionally set which 'walls' to create: left, right, top or bottom.
	 */
	function setBoundsToWorld (?left:Bool = true, ?right:Bool = true, ?top:Bool = true, ?bottom:Bool = true, ?setCollisionGroup:Bool = true):Void;
	
	/**
	 * Sets the given material against the 4 bounds of this World.
	 */
	function setWorldMaterial (material:phaser.physics.p2.Material, ?left:Bool = true, ?right:Bool = true, ?top:Bool = true, ?bottom:Bool = true):Void;
	
	/**
	 * By default the World will be set to collide everything with everything. The bounds of the world is a Body with 4 shapes, one for each face.
	 * If you start to use your own collision groups then your objects will no longer collide with the bounds.
	 * To fix this you need to adjust the bounds to use its own collision group first BEFORE changing your Sprites collision group.
	 */
	function updateBoundsCollisionGroup (?setCollisionGroup:Bool = true):Void;
	
	/**
	 * Sets the bounds of the Physics world to match the given world pixel dimensions.
	 * You can optionally set which 'walls' to create: left, right, top or bottom.
	 */
	function setBounds (x:Float, y:Float, width:Float, height:Float, ?left:Bool = true, ?right:Bool = true, ?top:Bool = true, ?bottom:Bool = true, ?setCollisionGroup:Bool = true):Void;
	
	/**
	 * Pauses the P2 World independent of the game pause state.
	 */
	function pause ():Void;
	
	/**
	 * Resumes a paused P2 World.
	 */
	function resume ():Void;
	
	/**
	 * Internal P2 update loop.
	 */
	function update ():Void;
	
	/**
	 * Called by Phaser.Physics when a State swap occurs.
	 * Starts the begin and end Contact listeners again.
	 */
	function reset ():Void;
	
	/**
	 * Clears all bodies from the simulation, resets callbacks and resets the collision bitmask.
	 * 
	 * The P2 world is also cleared:
	 * 
	 * <ul>
	 * <li>Removes all solver equations</li>
	 * <li>Removes all constraints</li>
	 * <li>Removes all bodies</li>
	 * <li>Removes all springs</li>
	 * <li>Removes all contact materials</li>
	 * </ul>
	 * 
	 * This is called automatically when you switch state.
	 */
	function clear ():Void;
	
	/**
	 * Clears all bodies from the simulation and unlinks World from Game. Should only be called on game shutdown. Call clear on a State change.
	 */
	function destroy ():Void;
	
	/**
	 * Add a body to the world.
	 */
	function addBody (body:phaser.physics.p2.Body):Bool;
	
	/**
	 * Removes a body from the world. This will silently fail if the body wasn't part of the world to begin with.
	 */
	function removeBody (body:phaser.physics.p2.Body):phaser.physics.p2.Body;
	
	/**
	 * Adds a Spring to the world.
	 */
	@:overload(function (spring:phaser.physics.p2.Spring):phaser.physics.p2.Spring {})
	@:overload(function (spring:Dynamic):phaser.physics.p2.Spring {})
	function addSpring (spring:Dynamic):phaser.physics.p2.Spring;
	
	/**
	 * Removes a Spring from the world.
	 */
	function removeSpring (spring:phaser.physics.p2.Spring):phaser.physics.p2.Spring;
	
	/**
	 * Creates a constraint that tries to keep the distance between two bodies constant.
	 */
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint {})
	function createDistanceConstraint (bodyA:Dynamic, bodyB:Dynamic, distance:Float, ?localAnchorA:Array<Dynamic>, ?localAnchorB:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint;
	
	/**
	 * Creates a constraint that tries to keep the distance between two bodies constant.
	 */
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint {})
	function createGearConstraint (bodyA:Dynamic, bodyB:Dynamic, ?angle:Float = 0, ?ratio:Float = 1):phaser.physics.p2.GearConstraint;
	
	/**
	 * Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	 * The pivot points are given in world (pixel) coordinates.
	 */
	@:overload(function (bodyA:phaser.gameobjects.Sprite, pivotA:Array<Dynamic>, bodyB:phaser.gameobjects.Sprite, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, pivotA:Array<Dynamic>, bodyB:phaser.gameobjects.Sprite, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:Dynamic, pivotA:Array<Dynamic>, bodyB:phaser.gameobjects.Sprite, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, pivotA:Array<Dynamic>, bodyB:phaser.physics.p2.Body, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, pivotA:Array<Dynamic>, bodyB:phaser.physics.p2.Body, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:Dynamic, pivotA:Array<Dynamic>, bodyB:phaser.physics.p2.Body, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, pivotA:Array<Dynamic>, bodyB:Dynamic, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, pivotA:Array<Dynamic>, bodyB:Dynamic, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint {})
	function createRevoluteConstraint (bodyA:Dynamic, pivotA:Array<Dynamic>, bodyB:Dynamic, pivotB:Array<Dynamic>, ?maxForce:Float = 0, ?worldPivot:Dynamic):phaser.physics.p2.RevoluteConstraint;
	
	/**
	 * Locks the relative position between two bodies.
	 */
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint {})
	function createLockConstraint (bodyA:Dynamic, bodyB:Dynamic, ?offset:Array<Dynamic>, ?angle:Float = 0, ?maxForce:Float):phaser.physics.p2.LockConstraint;
	
	/**
	 * Constraint that only allows bodies to move along a line, relative to each other.
	 * See <a href='http://www.iforce2d.net/b2dtut/joints-prismatic'>http://www.iforce2d.net/b2dtut/joints-prismatic</a>
	 */
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint {})
	function createPrismaticConstraint (bodyA:Dynamic, bodyB:Dynamic, ?lockRotation:Bool = true, ?anchorA:Array<Dynamic>, ?anchorB:Array<Dynamic>, ?axis:Array<Dynamic>, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint;
	
	/**
	 * Adds a Constraint to the world.
	 */
	function addConstraint (constraint:Dynamic):Dynamic;
	
	/**
	 * Removes a Constraint from the world.
	 */
	function removeConstraint (constraint:Dynamic):Dynamic;
	
	/**
	 * Adds a Contact Material to the world.
	 */
	function addContactMaterial (material:phaser.physics.p2.ContactMaterial):phaser.physics.p2.ContactMaterial;
	
	/**
	 * Removes a Contact Material from the world.
	 */
	function removeContactMaterial (material:phaser.physics.p2.ContactMaterial):phaser.physics.p2.ContactMaterial;
	
	/**
	 * Gets a Contact Material based on the two given Materials.
	 */
	function getContactMaterial (materialA:phaser.physics.p2.Material, materialB:phaser.physics.p2.Material):Dynamic;
	
	/**
	 * Sets the given Material against all Shapes owned by all the Bodies in the given array.
	 */
	function setMaterial (material:phaser.physics.p2.Material, bodies:Dynamic):Void;
	
	/**
	 * Creates a Material. Materials are applied to Shapes owned by a Body and can be set with Body.setMaterial().
	 * Materials are a way to control what happens when Shapes collide. Combine unique Materials together to create Contact Materials.
	 * Contact Materials have properties such as friction and restitution that allow for fine-grained collision control between different Materials.
	 */
	function createMaterial (?name:String, ?body:phaser.physics.p2.Body):phaser.physics.p2.Material;
	
	/**
	 * Creates a Contact Material from the two given Materials. You can then edit the properties of the Contact Material directly.
	 */
	function createContactMaterial (?materialA:phaser.physics.p2.Material, ?materialB:phaser.physics.p2.Material, ?options:Dynamic):phaser.physics.p2.ContactMaterial;
	
	/**
	 * Populates and returns an array with references to of all current Bodies in the world.
	 */
	function getBodies ():Dynamic;
	
	/**
	 * Checks the given object to see if it has a p2.Body and if so returns it.
	 */
	function getBody (object:Dynamic):Dynamic;
	
	/**
	 * Populates and returns an array of all current Springs in the world.
	 */
	function getSprings ():Dynamic;
	
	/**
	 * Populates and returns an array of all current Constraints in the world.
	 */
	function getConstraints ():Dynamic;
	
	/**
	 * Test if a world point overlaps bodies. You will get an array of actual P2 bodies back. You can find out which Sprite a Body belongs to
	 * (if any) by checking the Body.parent.sprite property. Body.parent is a Phaser.Physics.P2.Body property.
	 */
	@:overload(function (worldPoint:phaser.geom.Point, ?bodies:Dynamic, ?precision:Float = 5, ?filterStatic:Bool = false):Array<Dynamic> {})
	@:overload(function (worldPoint:phaser.geom.Point, ?bodies:phaser.gameobjects.Sprite, ?precision:Float = 5, ?filterStatic:Bool = false):Array<Dynamic> {})
	function hitTest (worldPoint:phaser.geom.Point, ?bodies:Dynamic, ?precision:Float = 5, ?filterStatic:Bool = false):Array<Dynamic>;
	
	/**
	 * Converts the current world into a JSON object.
	 */
	function toJSON ():Dynamic;
	
	/**
	 * Creates a new Collision Group and optionally applies it to the given object.
	 * Collision Groups are handled using bitmasks, therefore you have a fixed limit you can create before you need to re-use older groups.
	 */
	@:overload(function (?object:phaser.core.Group):Void {})
	function createCollisionGroup (?object:phaser.gameobjects.Sprite):Void;
	
	/**
	 * Sets the given CollisionGroup to be the collision group for all shapes in this Body, unless a shape is specified.
	 * Note that this resets the collisionMask and any previously set groups. See Body.collides() for appending them.
	 */
	@:overload(function (object:phaser.core.Group, group:Dynamic):Void {})
	function setCollisionGroup (object:phaser.gameobjects.Sprite, group:Dynamic):Void;
	
	/**
	 * Creates a linear spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
	 */
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring {})
	function createSpring (bodyA:Dynamic, bodyB:Dynamic, ?restLength:Float = 1, ?stiffness:Float = 100, ?damping:Float = 1, ?worldA:Array<Dynamic>, ?worldB:Array<Dynamic>, ?localA:Array<Dynamic>, ?localB:Array<Dynamic>):phaser.physics.p2.Spring;
	
	/**
	 * Creates a rotational spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
	 */
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.gameobjects.Sprite, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.gameobjects.Sprite, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.gameobjects.Sprite, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:phaser.physics.p2.Body, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:phaser.physics.p2.Body, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	@:overload(function (bodyA:Dynamic, bodyB:phaser.physics.p2.Body, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	@:overload(function (bodyA:phaser.gameobjects.Sprite, bodyB:Dynamic, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	@:overload(function (bodyA:phaser.physics.p2.Body, bodyB:Dynamic, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring {})
	function createRotationalSpring (bodyA:Dynamic, bodyB:Dynamic, ?restAngle:Float, ?stiffness:Float = 100, ?damping:Float = 1):phaser.physics.p2.RotationalSpring;
	
	/**
	 * Creates a new Body and adds it to the World.
	 */
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Bool, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):phaser.physics.p2.Body {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Float, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):phaser.physics.p2.Body {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Bool, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):phaser.physics.p2.Body {})
	function createBody (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Float, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):phaser.physics.p2.Body;
	
	/**
	 * Creates a new Particle and adds it to the World.
	 */
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Bool, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Void {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Float, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Void {})
	@:overload(function (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Bool, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Void {})
	function createParticle (x:Float, y:Float, mass:Float, ?addToWorld:Bool = false, ?options:Dynamic, ?options:Bool, ?options:Bool, ?options:Float, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Void;
	
	/**
	 * Converts all of the polylines objects inside a Tiled ObjectGroup into physics bodies that are added to the world.
	 * Note that the polylines must be created in such a way that they can withstand polygon decomposition.
	 */
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float, ?addToWorld:Bool = true):Array<Dynamic> {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String, ?addToWorld:Bool = true):Array<Dynamic> {})
	function convertCollisionObjects (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer, ?addToWorld:Bool = true):Array<Dynamic>;
	
	/**
	 * Clears all physics bodies from the given TilemapLayer that were created with World.convertTilemap.
	 */
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float):Void {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String):Void {})
	function clearTilemapLayerBodies (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer):Void;
	
	/**
	 * Goes through all tiles in the given Tilemap and TilemapLayer and converts those set to collide into physics bodies.
	 * Only call this <em>after</em> you have specified all of the tiles you wish to collide with calls like Tilemap.setCollisionBetween, etc.
	 * Every time you call this method it will destroy any previously created bodies and remove them from the world.
	 * Therefore understand it's a very expensive operation and not to be done in a core game update loop.
	 */
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:Float, ?addToWorld:Bool = true, ?optimize:Bool = true):Array<Dynamic> {})
	@:overload(function (map:phaser.tilemap.Tilemap, ?layer:String, ?addToWorld:Bool = true, ?optimize:Bool = true):Array<Dynamic> {})
	function convertTilemap (map:phaser.tilemap.Tilemap, ?layer:phaser.tilemap.TilemapLayer, ?addToWorld:Bool = true, ?optimize:Bool = true):Array<Dynamic>;
	
	/**
	 * Convert p2 physics value (meters) to pixel scale.
	 * By default Phaser uses a scale of 20px per meter.
	 * If you need to modify this you can over-ride these functions via the Physics Configuration object.
	 */
	function mpx (v:Float):Float;
	
	/**
	 * Convert pixel value to p2 physics scale (meters).
	 * By default Phaser uses a scale of 20px per meter.
	 * If you need to modify this you can over-ride these functions via the Physics Configuration object.
	 */
	function pxm (v:Float):Float;
	
	/**
	 * Convert p2 physics value (meters) to pixel scale and inverses it.
	 * By default Phaser uses a scale of 20px per meter.
	 * If you need to modify this you can over-ride these functions via the Physics Configuration object.
	 */
	function mpxi (v:Float):Float;
	
	/**
	 * Convert pixel value to p2 physics scale (meters) and inverses it.
	 * By default Phaser uses a scale of 20px per meter.
	 * If you need to modify this you can over-ride these functions via the Physics Configuration object.
	 */
	function pxmi (v:Float):Float;
	
	/**
	 * @name Phaser.Physics.P2#friction
	 */
	var friction:Float;
	
	/**
	 * @name Phaser.Physics.P2#restitution
	 */
	var restitution:Float;
	
	/**
	 * @name Phaser.Physics.P2#contactMaterial
	 */
	var contactMaterial:Dynamic;
	
	/**
	 * @name Phaser.Physics.P2#applySpringForces
	 */
	var applySpringForces:Bool;
	
	/**
	 * @name Phaser.Physics.P2#applyDamping
	 */
	var applyDamping:Bool;
	
	/**
	 * @name Phaser.Physics.P2#applyGravity
	 */
	var applyGravity:Bool;
	
	/**
	 * @name Phaser.Physics.P2#solveConstraints
	 */
	var solveConstraints:Bool;
	
	/**
	 * @name Phaser.Physics.P2#time
	 */
	var time(default, null):Bool;
	
	/**
	 * @name Phaser.Physics.P2#emitImpactEvent
	 */
	var emitImpactEvent:Bool;
	
	/**
	 * How to deactivate bodies during simulation. Possible modes are: World.NO_SLEEPING, World.BODY_SLEEPING and World.ISLAND_SLEEPING.
	 * If sleeping is enabled, you might need to wake up the bodies if they fall asleep when they shouldn't. If you want to enable sleeping in the world, but want to disable it for a particular body, see Body.allowSleep.
	 */
	var sleepMode:Float;
	
	/**
	 * @name Phaser.Physics.P2#total
	 */
	var total(default, null):Float;
	
}
