package phaser.physics;

import js.html.Float32Array;

/**
* This is your main access to the P2 Physics World.
* From here you can create materials, listen for events and add bodies into the physics simulation.
*/
@:native("Phaser.Physics.P2")
extern class P2 {

	/**
	* This is your main access to the P2 Physics World.
	* From here you can create materials, listen for events and add bodies into the physics simulation.
	* 
	* @param game Reference to the current game instance.
	* @param config Physics configuration object passed in from the game constructor.
	*/
	function new(game:phaser.Game, ?config:Dynamic);
	
	/**
	* Enable to automatically apply body damping each step.
	*/
	var applyDamping:Bool;
	
	/**
	* Enable to automatically apply gravity each step.
	*/
	var applyGravity:Bool;
	
	/**
	* Enable to automatically apply spring forces each step.
	*/
	var applySpringForces:Bool;
	
	/**
	* An array of the bodies the world bounds collides with.
	*/
	var boundsCollidesWith:Array<phaser.physics.p2.Body>;
	
	/**
	* A default collision group.
	*/
	var boundsCollisionGroup:phaser.physics.p2.CollisionGroup;
	
	/**
	* The p2 World configuration object.
	*/
	var config:Dynamic;
	
	/**
	* The context under which the callbacks are fired.
	*/
	var callbackContext:Dynamic;
	
	/**
	* An array containing the collision groups that have been defined in the World.
	*/
	var collisionGroups:Array<phaser.physics.p2.CollisionGroup>;
	
	/**
	* The default Contact Material being used by the World.
	*/
	var contactMaterial:phaser.physics.p2.ContactMaterial;
	
	/**
	* Set to true if you want to the world to emit the "impact" event. Turning this off could improve performance.
	*/
	var emitImpactEvent:Bool;
	
	/**
	* A default collision group.
	*/
	var everythingCollisionGroup:phaser.physics.p2.CollisionGroup;
	
	/**
	* The frame rate the world will be stepped at. Defaults to 1 / 60, but you can change here. Also see useElapsedTime property.
	*/
	var frameRate:Float;
	
	/**
	* Friction between colliding bodies. This value is used if no matching ContactMaterial is found for a Material pair.
	*/
	var friction:Float;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* The gravity applied to all bodies each step.
	*/
	var gravity:phaser.physics.p2.InversePointProxy;
	
	/**
	* A local array of all created Materials.
	*/
	var materials:Array<phaser.physics.p2.Material>;
	
	/**
	* A default collision group.
	*/
	var nothingCollisionGroup:phaser.physics.p2.CollisionGroup;
	
	/**
	* This signal is dispatched when a new Body is added to the World.
	* 
	* It sends 1 argument: `body` which is the `Phaser.Physics.P2.Body` that was added to the world.
	*/
	var onBodyAdded:phaser.Signal;
	
	/**
	* This signal is dispatched when a Body is removed to the World.
	* 
	* It sends 1 argument: `body` which is the `Phaser.Physics.P2.Body` that was removed from the world.
	*/
	var onBodyRemoved:phaser.Signal;
	
	/**
	* This Signal is dispatched when a first contact is created between two bodies. This happens *before* the step has been done.
	* 
	* It sends 5 arguments: `bodyA`, `bodyB`, `shapeA`, `shapeB` and `contactEquations`.
	* 
	* It is possible that in certain situations the `bodyA` or `bodyB` values are `null`. You should check for this
	* in your own code to avoid processing potentially null physics bodies.
	*/
	var onBeginContact:phaser.Signal;
	
	/**
	* This signal is dispatched when a Constraint is added to the World.
	* 
	* It sends 1 argument: `constraint` which is the `Phaser.Physics.P2.Constraint` that was added to the world.
	*/
	var onConstraintAdded:phaser.Signal;
	
	/**
	* This signal is dispatched when a Constraint is removed from the World.
	* 
	* It sends 1 argument: `constraint` which is the `Phaser.Physics.P2.Constraint` that was removed from the world.
	*/
	var onConstraintRemoved:phaser.Signal;
	
	/**
	* This signal is dispatched when a Contact Material is added to the World.
	* 
	* It sends 1 argument: `material` which is the `Phaser.Physics.P2.ContactMaterial` that was added to the world.
	*/
	var onContactMaterialAdded:phaser.Signal;
	
	/**
	* This signal is dispatched when a Contact Material is removed from the World.
	* 
	* It sends 1 argument: `material` which is the `Phaser.Physics.P2.ContactMaterial` that was removed from the world.
	*/
	var onContactMaterialRemoved:phaser.Signal;
	
	/**
	* This Signal is dispatched when final contact occurs between two bodies. This happens *before* the step has been done.
	* 
	* It sends 4 arguments: `bodyA`, `bodyB`, `shapeA` and `shapeB`.
	* 
	* It is possible that in certain situations the `bodyA` or `bodyB` values are `null`. You should check for this
	* in your own code to avoid processing potentially null physics bodies.
	*/
	var onEndContact:phaser.Signal;
	
	/**
	* This signal is dispatched when a Spring is added to the World.
	* 
	* It sends 1 argument: `spring` which is either a `Phaser.Physics.P2.Spring`, `p2.LinearSpring` or `p2.RotationalSpring` that was added to the world.
	*/
	var onSpringAdded:phaser.Signal;
	
	/**
	* This signal is dispatched when a Spring is removed from the World.
	* 
	* It sends 1 argument: `spring` which is either a `Phaser.Physics.P2.Spring`, `p2.LinearSpring` or `p2.RotationalSpring` that was removed from the world.
	*/
	var onSpringRemoved:phaser.Signal;
	
	/**
	* The paused state of the P2 World.
	*/
	var paused:Bool;
	
	var postBroaddphaseCallback:Dynamic;
	
	/**
	* Default coefficient of restitution between colliding bodies. This value is used if no matching ContactMaterial is found for a Material pair.
	*/
	var restitution:Float;
	
	/**
	* Enable/disable constraint solving in each step.
	*/
	var solveConstraints:Bool;
	
	/**
	* The World time.
	*/
	var time:Dynamic;
	
	/**
	* The total number of bodies in the world.
	*/
	var total:Float;
	
	/**
	* If true the frameRate value will be ignored and instead p2 will step with the value of Game.Time.physicsElapsed, which is a delta time value.
	*/
	var useElapsedTime:Bool;
	
	/**
	* An object containing the 4 wall bodies that bound the physics world.
	*/
	var walls:{left:phaser.physics.p2.Body, right:phaser.physics.p2.Body, top:phaser.physics.p2.Body, bottom:phaser.physics.p2.Body};
	
	/**
	* The p2 World in which the simulation is run.
	*/
	var world:Dynamic;
	
	/**
	* Add a body to the world.
	* 
	* @param body The Body to add to the World.
	* @return True if the Body was added successfully, otherwise false.
	*/
	function addBody(body:phaser.physics.p2.Body):Bool;
	
	/**
	* Adds a Contact Material to the world.
	* 
	* @param material The Contact Material to be added to the World.
	* @return The Contact Material that was added.
	*/
	function addContactMaterial(material:phaser.physics.p2.ContactMaterial):phaser.physics.p2.ContactMaterial;
	
	/**
	* Adds a Constraint to the world.
	* 
	* @param constraint The Constraint to add to the World.
	* @return The Constraint that was added.
	*/
	function addConstraint<T>(constraint:T):T;
	
	/**
	* Adds a Spring to the world.
	* 
	* @param spring The Spring to add to the World.
	* @return The Spring that was added.
	*/
	function addSpring(spring:phaser.physics.p2.Spring):phaser.physics.p2.Spring;
	
	/**
	* Handles a p2 begin contact event.
	* 
	* @param event The event data.
	*/
	function beginContactHandler(event:Dynamic):Void;
	
	/**
	* Clears all bodies from the simulation, resets callbacks and resets the collision bitmask.
	* 
	* The P2 world is also cleared:
	* 
	* * Removes all solver equations
	* * Removes all constraints
	* * Removes all bodies
	* * Removes all springs
	* * Removes all contact materials
	* 
	* This is called automatically when you switch state.
	*/
	function clear():Void;
	
	/**
	* Clears all physics bodies from the given TilemapLayer that were created with `World.convertTilemap`.
	* 
	* @param map The Tilemap to get the map data from.
	* @param layer The layer to operate on. If not given will default to map.currentLayer.
	*/
	function clearTilemapLayerBodies(map:phaser.Tilemap, ?layer:Dynamic):Void;
	
	/**
	* Converts all of the polylines objects inside a Tiled ObjectGroup into physics bodies that are added to the world.
	* Note that the polylines must be created in such a way that they can withstand polygon decomposition.
	* 
	* @param map The Tilemap to get the map data from.
	* @param layer The layer to operate on. If not given will default to map.currentLayer.
	* @param addToWorld If true it will automatically add each body to the world. - Default: true
	* @return An array of the Phaser.Physics.Body objects that have been created.
	*/
	function convertCollisionObjects(map:phaser.Tilemap, ?layer:Dynamic, ?addToWorld:Bool):Array<phaser.physics.p2.Body>;
	
	/**
	* Goes through all tiles in the given Tilemap and TilemapLayer and converts those set to collide into physics bodies.
	* Only call this *after* you have specified all of the tiles you wish to collide with calls like Tilemap.setCollisionBetween, etc.
	* Every time you call this method it will destroy any previously created bodies and remove them from the world.
	* Therefore understand it's a very expensive operation and not to be done in a core game update loop.
	* 
	* @param map The Tilemap to get the map data from.
	* @param layer The layer to operate on. If not given will default to map.currentLayer.
	* @param addToWorld If true it will automatically add each body to the world, otherwise it's up to you to do so. - Default: true
	* @param optimize If true adjacent colliding tiles will be combined into a single body to save processing. However it means you cannot perform specific Tile to Body collision responses. - Default: true
	* @return An array of the Phaser.Physics.P2.Body objects that were created.
	*/
	function convertTilemap(map:phaser.Tilemap, ?layer:Dynamic, ?addToWorld:Bool, ?optimize:Bool):Array<phaser.physics.p2.Body>;
	
	/**
	* Creates a new Body and adds it to the World.
	* 
	* @param x The x coordinate of Body.
	* @param y The y coordinate of Body.
	* @param mass The mass of the Body. A mass of 0 means a 'static' Body is created.
	* @param addToWorld Automatically add this Body to the world? (usually false as it won't have any shapes on construction).
	* @param options An object containing the build options:
	* @param options .optimalDecomp Set to true if you need optimal decomposition. Warning: very slow for polygons with more than 10 vertices.
	* @param options .skipSimpleCheck Set to true if you already know that the path is not intersecting itself.
	* @param options .removeCollinearPoints Set to a number (angle threshold value) to remove collinear points, or false to keep all points.
	* @param points An array of 2d vectors that form the convex or concave polygon.Either [[0,0], [0,1],...] or a flat array of numbers that will be interpreted as [x,y, x,y, ...],or the arguments passed can be flat x,y values e.g. `setPolygon(options, x,y, x,y, x,y, ...)` where `x` and `y` are numbers.
	* @return The body
	*/
	@:overload(function(x:Float, y:Float, mass:Float, ?addToWorld:Bool, ?options:Dynamic, ?data:Array<Float>):phaser.physics.p2.Body{})
	function createBody(x:Float, y:Float, mass:Float, ?addToWorld:Bool, ?options:Dynamic, ?data:Array<Array<Float>>):phaser.physics.p2.Body;
	
	/**
	* Creates a new Collision Group and optionally applies it to the given object.
	* Collision Groups are handled using bitmasks, therefore you have a fixed limit you can create before you need to re-use older groups.
	* 
	* @param object An optional Sprite or Group to apply the Collision Group to. If a Group is given it will be applied to all top-level children.
	*/
	@:overload(function(?group:phaser.Sprite):phaser.physics.p2.CollisionGroup{})
	function createCollisionGroup(?group:phaser.Group):phaser.physics.p2.CollisionGroup;
	
	/**
	* Creates a Contact Material from the two given Materials. You can then edit the properties of the Contact Material directly.
	* 
	* @param materialA The first Material to create the ContactMaterial from. If undefined it will create a new Material object first.
	* @param materialB The second Material to create the ContactMaterial from. If undefined it will create a new Material object first.
	* @param options Material options object.
	* @return The Contact Material that was created.
	*/
	function createContactMaterial(materialA:phaser.physics.p2.Material, materialB:phaser.physics.p2.Material, ?options:Dynamic):phaser.physics.p2.ContactMaterial;
	
	/**
	* Creates a constraint that tries to keep the distance between two bodies constant.
	* 
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param distance The distance to keep between the bodies.
	* @param localAnchorA The anchor point for bodyA, defined locally in bodyA frame. Defaults to [0,0].
	* @param localAnchorB The anchor point for bodyB, defined locally in bodyB frame. Defaults to [0,0].
	* @param maxForce The maximum force that should be applied to constrain the bodies.
	* @return The constraint
	*/
	function createDistanceConstraint(bodyA:Dynamic, bodyB:Dynamic, distance:Float, ?localAnchorA:Array<Float>, ?localAnchorB:Array<Float>, ?maxForce:Float):phaser.physics.p2.DistanceConstraint;
	
	/**
	* Creates a constraint that tries to keep the distance between two bodies constant.
	* 
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param angle The relative angle
	* @param ratio The gear ratio. - Default: 1
	* @return The constraint
	*/
	function createGearConstraint(bodyA:Dynamic, bodyB:Dynamic, ?angle:Float, ?ratio:Float):phaser.physics.p2.GearConstraint;
	
	/**
	* Locks the relative position between two bodies.
	* 
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param offset The offset of bodyB in bodyA's frame. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param angle The angle of bodyB in bodyA's frame.
	* @param maxForce The maximum force that should be applied to constrain the bodies.
	* @return The constraint
	*/
	function createLockConstraint(bodyA:Dynamic, bodyB:Dynamic, ?offset:Array<Float>, ?angle:Float, ?maxForce:Float):phaser.physics.p2.LockConstraint;
	
	/**
	* Creates a Material. Materials are applied to Shapes owned by a Body and can be set with Body.setMaterial().
	* Materials are a way to control what happens when Shapes collide. Combine unique Materials together to create Contact Materials.
	* Contact Materials have properties such as friction and restitution that allow for fine-grained collision control between different Materials.
	* 
	* @param name Optional name of the Material. Each Material has a unique ID but string names are handy for debugging.
	* @param body Optional Body. If given it will assign the newly created Material to the Body shapes.
	* @return The Material that was created. This is also stored in Phaser.Physics.P2.materials.
	*/
	function createMaterial(?name:String, ?body:phaser.physics.p2.Body):phaser.physics.p2.Material;
	
	/**
	* Creates a new Particle and adds it to the World.
	* 
	* @param x The x coordinate of Body.
	* @param y The y coordinate of Body.
	* @param mass The mass of the Body. A mass of 0 means a 'static' Body is created.
	* @param addToWorld Automatically add this Body to the world? (usually false as it won't have any shapes on construction).
	* @param options An object containing the build options:
	* @param options .optimalDecomp Set to true if you need optimal decomposition. Warning: very slow for polygons with more than 10 vertices.
	* @param options .skipSimpleCheck Set to true if you already know that the path is not intersecting itself.
	* @param options .removeCollinearPoints Set to a number (angle threshold value) to remove collinear points, or false to keep all points.
	* @param points An array of 2d vectors that form the convex or concave polygon.Either [[0,0], [0,1],...] or a flat array of numbers that will be interpreted as [x,y, x,y, ...],or the arguments passed can be flat x,y values e.g. `setPolygon(options, x,y, x,y, x,y, ...)` where `x` and `y` are numbers.
	*/
	@:overload(function(x:Float, y:Float, mass:Float, ?addToWorld:Bool, ?options:Dynamic, ?data:Array<Float>):phaser.physics.p2.Body{})
	function createParticle(x:Float, y:Float, mass:Float, ?addToWorld:Bool, ?options:Dynamic, ?data:Array<Array<Float>>):phaser.physics.p2.Body;
	
	/**
	* Constraint that only allows bodies to move along a line, relative to each other.
	* See http://www.iforce2d.net/b2dtut/joints-prismatic
	* 
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param lockRotation If set to false, bodyB will be free to rotate around its anchor point. - Default: true
	* @param anchorA Body A's anchor point, defined in its own local frame. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param anchorB Body A's anchor point, defined in its own local frame. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param axis An axis, defined in body A frame, that body B's anchor point may slide along. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param maxForce The maximum force that should be applied to constrain the bodies.
	* @return The constraint
	*/
	function createPrismaticConstraint(body:Dynamic, bodyB:Dynamic, ?lockRotation:Bool, ?anchorA:Array<Float>, ?anchorB:Array<Float>, ?axis:Float32Array, ?maxForce:Float):phaser.physics.p2.PrismaticConstraint;
	
	/**
	* Connects two bodies at given offset points, letting them rotate relative to each other around this point.
	* The pivot points are given in world (pixel) coordinates.
	* 
	* @param bodyA First connected body.
	* @param pivotA The point relative to the center of mass of bodyA which bodyA is constrained to. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param bodyB Second connected body.
	* @param pivotB The point relative to the center of mass of bodyB which bodyB is constrained to. The value is an array with 2 elements matching x and y, i.e: [32, 32].
	* @param maxForce The maximum force that should be applied to constrain the bodies.
	* @param worldPivot A pivot point given in world coordinates. If specified, localPivotA and localPivotB are automatically computed from this value.
	* @return The constraint
	*/
	function createRevoluteConstraint(bodyA:Dynamic, pivotA:Array<Float>, bodyB:Dynamic, pivotB:Array<Float>, ?maxForce:Float, ?worldPivot:Array<Float>):phaser.physics.p2.RevoluteConstraint;
	
	/**
	* Creates a rotational spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
	* 
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param restAngle The relative angle of bodies at which the spring is at rest. If not given, it's set to the current relative angle between the bodies.
	* @param stiffness Stiffness of the spring. A number >= 0. - Default: 100
	* @param damping Damping of the spring. A number >= 0. - Default: 1
	* @return The spring
	*/
	function createRotationalSpring(bodyA:Dynamic, bodyB:Dynamic, ?restAngle:Float, ?stiffness:Float, ?damping:Float):Dynamic;
	
	/**
	* Creates a linear spring, connecting two bodies. A spring can have a resting length, a stiffness and damping.
	* 
	* @param bodyA First connected body.
	* @param bodyB Second connected body.
	* @param restLength Rest length of the spring. A number > 0. - Default: 1
	* @param stiffness Stiffness of the spring. A number >= 0. - Default: 100
	* @param damping Damping of the spring. A number >= 0. - Default: 1
	* @param worldA Where to hook the spring to body A in world coordinates. This value is an array by 2 elements, x and y, i.e: [32, 32].
	* @param worldB Where to hook the spring to body B in world coordinates. This value is an array by 2 elements, x and y, i.e: [32, 32].
	* @param localA Where to hook the spring to body A in local body coordinates. This value is an array by 2 elements, x and y, i.e: [32, 32].
	* @param localB Where to hook the spring to body B in local body coordinates. This value is an array by 2 elements, x and y, i.e: [32, 32].
	* @return The spring
	*/
	function createSpring(bodyA:Dynamic, bodyB:Dynamic, ?restLength:Float, ?stiffness:Float, ?damping:Float, ?worldA:Array<Float>, ?worldB:Array<Float>, ?localA:Array<Float>, ?localB:Array<Float>):phaser.physics.p2.Spring;
	
	/**
	* Clears all bodies from the simulation and unlinks World from Game. Should only be called on game shutdown. Call `clear` on a State change.
	*/
	function destroy():Void;
	
	/**
	* This will create a P2 Physics body on the given game object or array of game objects.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
	* Note: When the game object is enabled for P2 physics it has its anchor x/y set to 0.5 so it becomes centered.
	* 
	* @param object The game object to create the physics body on. Can also be an array or Group of objects, a body will be created on every child that has a `body` property.
	* @param debug Create a debug object to go with this body?
	* @param children Should a body be created on all children of this object? If true it will recurse down the display list as far as it can go. - Default: true
	*/
	function enable(object:Dynamic, ?debug:Bool, ?children:Bool):Void;
	
	/**
	* Creates a P2 Physics body on the given game object.
	* A game object can only have 1 physics body active at any one time, and it can't be changed until the body is nulled.
	* 
	* @param object The game object to create the physics body on. A body will only be created if this object has a null `body` property.
	* @param debug Create a debug object to go with this body?
	*/
	function enableBody(object:Dynamic, debug:Bool):Void;
	
	/**
	* Handles a p2 end contact event.
	* 
	* @param event The event data.
	*/
	function endContactHandler(event:Dynamic):Void;
	
	/**
	* Populates and returns an array with references to of all current Bodies in the world.
	* 
	* @return An array containing all current Bodies in the world.
	*/
	function getBodies():Array<phaser.physics.p2.Body>;
	
	/**
	* Checks the given object to see if it has a p2.Body and if so returns it.
	* 
	* @param object The object to check for a p2.Body on.
	* @return The p2.Body, or null if not found.
	*/
	function getBody(object:Dynamic):phaser.physics.p2.Body;
	
	/**
	* Populates and returns an array of all current Constraints in the world.
	* You will get an array of p2 constraints back. This can be of mixed types, for example the array may contain
	* PrismaticConstraints, RevoluteConstraints or any other valid p2 constraint type.
	* 
	* @return An array containing all current Constraints in the world.
	*/
	function getConstraints():Array<Dynamic>;
	
	/**
	* Populates and returns an array of all current Springs in the world.
	* 
	* @return An array containing all current Springs in the world.
	*/
	function getSprings():Array<phaser.physics.p2.Spring>;
	
	/**
	* Gets a Contact Material based on the two given Materials.
	* 
	* @param materialA The first Material to search for.
	* @param materialB The second Material to search for.
	* @return The Contact Material or false if none was found matching the Materials given.
	*/
	function getContactMaterial(materialA:phaser.physics.p2.Material, materialB:phaser.physics.p2.Material):phaser.physics.p2.ContactMaterial;
	
	/**
	* Test if a world point overlaps bodies. You will get an array of actual P2 bodies back. You can find out which Sprite a Body belongs to
	* (if any) by checking the Body.parent.sprite property. Body.parent is a Phaser.Physics.P2.Body property.
	* 
	* @param worldPoint Point to use for intersection tests. The points values must be in world (pixel) coordinates.
	* @param bodies A list of objects to check for intersection. If not given it will check Phaser.Physics.P2.world.bodies (i.e. all world bodies)
	* @param precision Used for matching against particles and lines. Adds some margin to these infinitesimal objects. - Default: 5
	* @param filterStatic If true all Static objects will be removed from the results array.
	* @return Array of bodies that overlap the point.
	*/
	function hitTest(worldPoint:phaser.Point, ?bodies:Array<Dynamic>, ?precision:Float, ?filterStatic:Bool):Array<phaser.physics.p2.Body>;
	
	/**
	* Convert p2 physics value (meters) to pixel scale.
	* By default Phaser uses a scale of 20px per meter.
	* If you need to modify this you can over-ride these functions via the Physics Configuration object.
	* 
	* @param v The value to convert.
	* @return The scaled value.
	*/
	function mpx(v:Float):Float;
	
	/**
	* Convert p2 physics value (meters) to pixel scale and inverses it.
	* By default Phaser uses a scale of 20px per meter.
	* If you need to modify this you can over-ride these functions via the Physics Configuration object.
	* 
	* @param v The value to convert.
	* @return The scaled value.
	*/
	function mpxi(v:Float):Float;
	
	/**
	* Pauses the P2 World independent of the game pause state.
	*/
	function pause():Void;
	
	/**
	* Called at the start of the core update loop. Purges flagged bodies from the world.
	*/
	function preUpdate():Void;
	
	/**
	* Convert pixel value to p2 physics scale (meters).
	* By default Phaser uses a scale of 20px per meter.
	* If you need to modify this you can over-ride these functions via the Physics Configuration object.
	* 
	* @param v The value to convert.
	* @return The scaled value.
	*/
	function pxm(v:Float):Float;
	
	/**
	* Convert pixel value to p2 physics scale (meters) and inverses it.
	* By default Phaser uses a scale of 20px per meter.
	* If you need to modify this you can over-ride these functions via the Physics Configuration object.
	* 
	* @param v The value to convert.
	* @return The scaled value.
	*/
	function pxmi(v:Float):Float;
	
	/**
	* Removes a body from the world. This will silently fail if the body wasn't part of the world to begin with.
	* 
	* @param body The Body to remove from the World.
	* @return The Body that was removed.
	*/
	function removeBody(body:phaser.physics.p2.Body):phaser.physics.p2.Body;
	
	/**
	* This will add a P2 Physics body into the removal list for the next step.
	* 
	* @param body The body to remove at the start of the next step.
	*/
	function removeBodyNextStep(body:phaser.physics.p2.Body):Void;
	
	/**
	* Removes a Constraint from the world.
	* 
	* @param constraint The Constraint to be removed from the World.
	* @return The Constraint that was removed.
	*/
	function removeConstraint<T>(constraint:T):T;
	
	/**
	* Removes a Contact Material from the world.
	* 
	* @param material The Contact Material to be removed from the World.
	* @return The Contact Material that was removed.
	*/
	function removeContactMaterial(material:phaser.physics.p2.ContactMaterial):phaser.physics.p2.ContactMaterial;
	
	/**
	* Removes a Spring from the world.
	* 
	* @param spring The Spring to remove from the World.
	* @return The Spring that was removed.
	*/
	function removeSpring(spring:phaser.physics.p2.Spring):phaser.physics.p2.Spring;
	
	/**
	* Called by Phaser.Physics when a State swap occurs.
	* Starts the begin and end Contact listeners again.
	*/
	function reset():Void;
	
	/**
	* Resumes a paused P2 World.
	*/
	function resume():Void;
	
	/**
	* Sets the bounds of the Physics world to match the given world pixel dimensions.
	* You can optionally set which 'walls' to create: left, right, top or bottom.
	* If none of the walls are given it will default to use the walls settings it had previously.
	* I.e. if you previously told it to not have the left or right walls, and you then adjust the world size
	* the newly created bounds will also not have the left and right walls.
	* Explicitly state them in the parameters to override this.
	* 
	* @param x The x coordinate of the top-left corner of the bounds.
	* @param y The y coordinate of the top-left corner of the bounds.
	* @param width The width of the bounds.
	* @param height The height of the bounds.
	* @param left If true will create the left bounds wall. - Default: true
	* @param right If true will create the right bounds wall. - Default: true
	* @param top If true will create the top bounds wall. - Default: true
	* @param bottom If true will create the bottom bounds wall. - Default: true
	* @param setCollisionGroup If true the Bounds will be set to use its own Collision Group. - Default: true
	*/
	function setBounds(x:Float, y:Float, width:Float, height:Float, ?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool, ?setCollisionGroup:Bool):Void;
	
	function setBoundsToWorld(?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool, ?setCollisionGroup:Bool):Void;
	
	function setCollisionGroup(object:Dynamic, group:phaser.physics.p2.CollisionGroup):Void;
	
	/**
	* Impact event handling is disabled by default. Enable it before any impact events will be dispatched.
	* In a busy world hundreds of impact events can be generated every step, so only enable this if you cannot do what you need via beginContact or collision masks.
	* 
	* @param state Set to true to enable impact events, or false to disable.
	*/
	function setImpactEvents(state:Bool):Void;
	
	/**
	* Sets the given Material against all Shapes owned by all the Bodies in the given array.
	* 
	* @param material The Material to be applied to the given Bodies.
	* @param bodies An Array of Body objects that the given Material will be set on.
	*/
	function setMaterial(material:phaser.physics.p2.Material, ?bodies:Array<phaser.physics.p2.Body>):Void;
	
	/**
	* Sets a callback to be fired after the Broadphase has collected collision pairs in the world.
	* Just because a pair exists it doesn't mean they *will* collide, just that they potentially could do.
	* If your calback returns `false` the pair will be removed from the narrowphase. This will stop them testing for collision this step.
	* Returning `true` from the callback will ensure they are checked in the narrowphase.
	* 
	* @param callback The callback that will receive the postBroadphase event data. It must return a boolean. Set to null to disable an existing callback.
	* @param context The context under which the callback will be fired.
	*/
	function setPostBroadphaseCallback(callback:Dynamic, context:Dynamic):Void;
	
	function setWorldMaterial(material:phaser.physics.p2.Material, ?left:Bool, ?right:Bool, ?top:Bool, ?bottom:Bool):Void;
	
	/**
	* Converts the current world into a JSON object.
	* 
	* @return A JSON representation of the world.
	*/
	function toJSON():Dynamic;
	
	/**
	* Internal P2 update loop.
	*/
	function update():Void;
	
	/**
	* By default the World will be set to collide everything with everything. The bounds of the world is a Body with 4 shapes, one for each face.
	* If you start to use your own collision groups then your objects will no longer collide with the bounds.
	* To fix this you need to adjust the bounds to use its own collision group first BEFORE changing your Sprites collision group.
	* 
	* @param setCollisionGroup If true the Bounds will be set to use its own Collision Group. - Default: true
	*/
	function updateBoundsCollisionGroup(?setCollisionGroup:Bool):Void;
	
}

