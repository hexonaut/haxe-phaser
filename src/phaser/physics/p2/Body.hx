package phaser.physics.p2;

@:native("Phaser.Physics.P2.Body")
extern class Body {
	
	/**
	 * The Physics Body is typically linked to a single Sprite and defines properties that determine how the physics body is simulated.
	 * These properties affect how the body reacts to forces, what forces it generates on itself (to simulate friction), and how it reacts to collisions in the scene.
	 * In most cases, the properties are used to simulate physical effects. Each body also has its own property values that determine exactly how it reacts to forces and collisions in the scene.
	 * By default a single Rectangle shape is added to the Body that matches the dimensions of the parent Sprite. See addShape, removeShape, clearShapes to add extra shapes around the Body.
	 * Note: When bound to a Sprite to avoid single-pixel jitters on mobile devices we strongly recommend using Sprite sizes that are even on both axis, i.e. 128x128 not 127x127.
	 * Note: When a game object is given a P2 body it has its anchor x/y set to 0.5, so it becomes centered.
	 */
	function new (game:phaser.core.Game, ?sprite:phaser.gameobjects.Sprite, ?x:Float = 0, ?y:Float = 0, ?mass:Float = 1);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to the P2 World.
	 */
	var world:phaser.physics.p2.World;
	
	/**
	 * Reference to the parent Sprite.
	 */
	var sprite:phaser.gameobjects.Sprite;
	
	/**
	 * The type of physics system this body belongs to.
	 */
	var type:Float;
	
	/**
	 * The offset of the Physics Body from the Sprite x/y position.
	 */
	var offset:phaser.geom.Point;
	
	/**
	 * The p2 Body data.
	 */
	var data:Dynamic;
	
	/**
	 * The velocity of the body. Set velocity.x to a negative value to move to the left, position to the right. velocity.y negative values move up, positive move down.
	 */
	var velocity:phaser.physics.p2.InversePointProxy;
	
	/**
	 * The force applied to the body.
	 */
	var force:phaser.physics.p2.InversePointProxy;
	
	/**
	 * A locally applied gravity force to the Body. Applied directly before the world step. NOTE: Not currently implemented.
	 */
	var gravity:phaser.geom.Point;
	
	/**
	 * Dispatched when a first contact is created between shapes in two bodies. This event is fired during the step, so collision has already taken place.
	 * The event will be sent 4 parameters: The body it is in contact with, the shape from this body that caused the contact, the shape from the contact body and the contact equation data array.
	 */
	var onBeginContact:phaser.core.Signal;
	
	/**
	 * Dispatched when contact ends between shapes in two bodies. This event is fired during the step, so collision has already taken place.
	 * The event will be sent 3 parameters: The body it is in contact with, the shape from this body that caused the contact and the shape from the contact body.
	 */
	var onEndContact:phaser.core.Signal;
	
	/**
	 * Array of CollisionGroups that this Bodies shapes collide with.
	 */
	var collidesWith:Array<Dynamic>;
	
	/**
	 * To avoid deleting this body during a physics step, and causing all kinds of problems, set removeNextStep to true to have it removed in the next preUpdate.
	 */
	var removeNextStep:Bool;
	
	/**
	 * Reference to the debug body.
	 */
	var debugBody:phaser.physics.p2.BodyDebug;
	
	/**
	 * Internal var that determines if this Body collides with the world bounds or not.
	 */
	var _collideWorldBounds:Bool;
	
	/**
	 * Array of Body callbacks.
	 */
	var _bodyCallbacks:Dynamic;
	
	/**
	 * Array of Body callback contexts.
	 */
	var _bodyCallbackContext:Dynamic;
	
	/**
	 * Array of Group callbacks.
	 */
	var _groupCallbacks:Dynamic;
	
	/**
	 * Array of Grouo callback contexts.
	 */
	var _groupCallbackContext:Dynamic;
	
	/**
	 * Sets a callback to be fired any time a shape in this Body impacts with a shape in the given Body. The impact test is performed against body.id values.
	 * The callback will be sent 4 parameters: This body, the body that impacted, the Shape in this body and the shape in the impacting body.
	 * Note that the impact event happens after collision resolution, so it cannot be used to prevent a collision from happening.
	 * It also happens mid-step. So do not destroy a Body during this callback, instead set safeDestroy to true so it will be killed on the next preUpdate.
	 */
	@:overload(function (object:phaser.gameobjects.Sprite, callback:Dynamic, callbackContext:Dynamic):Void {})
	@:overload(function (object:phaser.gameobjects.TileSprite, callback:Dynamic, callbackContext:Dynamic):Void {})
	@:overload(function (object:phaser.physics.p2.Body, callback:Dynamic, callbackContext:Dynamic):Void {})
	function createBodyCallback (object:Dynamic, callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	 * Sets a callback to be fired any time this Body impacts with the given Group. The impact test is performed against shape.collisionGroup values.
	 * The callback will be sent 4 parameters: This body, the body that impacted, the Shape in this body and the shape in the impacting body.
	 * This callback will only fire if this Body has been assigned a collision group.
	 * Note that the impact event happens after collision resolution, so it cannot be used to prevent a collision from happening.
	 * It also happens mid-step. So do not destroy a Body during this callback, instead set safeDestroy to true so it will be killed on the next preUpdate.
	 */
	function createGroupCallback (group:Dynamic, callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	 * Gets the collision bitmask from the groups this body collides with.
	 */
	function getCollisionMask ():Float;
	
	/**
	 * Updates the collisionMask.
	 */
	function updateCollisionMask (?shape:Dynamic):Void;
	
	/**
	 * Sets the given CollisionGroup to be the collision group for all shapes in this Body, unless a shape is specified.
	 * This also resets the collisionMask.
	 */
	function setCollisionGroup (group:Dynamic, ?shape:Dynamic):Void;
	
	/**
	 * Clears the collision data from the shapes in this Body. Optionally clears Group and/or Mask.
	 */
	function clearCollision (?clearGroup:Bool = true, ?clearMask:Bool = true, ?shape:Dynamic):Void;
	
	/**
	 * Adds the given CollisionGroup, or array of CollisionGroups, to the list of groups that this body will collide with and updates the collision masks.
	 */
	@:overload(function (group:Dynamic, ?callback:Dynamic, ?callbackContext:Dynamic, ?shape:Dynamic):Void {})
	function collides (group:Array<Dynamic>, ?callback:Dynamic, ?callbackContext:Dynamic, ?shape:Dynamic):Void;
	
	/**
	 * Moves the shape offsets so their center of mass becomes the body center of mass.
	 */
	function adjustCenterOfMass ():Void;
	
	/**
	 * Apply damping, see <a href='http://code.google.com/p/bullet/issues/detail?id=74'>http://code.google.com/p/bullet/issues/detail?id=74</a> for details.
	 */
	function applyDamping (dt:Float):Void;
	
	/**
	 * Apply force to a world point. This could for example be a point on the RigidBody surface. Applying force this way will add to Body.force and Body.angularForce.
	 */
	@:overload(function (force:Dynamic, worldX:Float, worldY:Float):Void {})
	function applyForce (force:Array<Dynamic>, worldX:Float, worldY:Float):Void;
	
	/**
	 * Sets the force on the body to zero.
	 */
	function setZeroForce ():Void;
	
	/**
	 * If this Body is dynamic then this will zero its angular velocity.
	 */
	function setZeroRotation ():Void;
	
	/**
	 * If this Body is dynamic then this will zero its velocity on both axis.
	 */
	function setZeroVelocity ():Void;
	
	/**
	 * Sets the Body damping and angularDamping to zero.
	 */
	function setZeroDamping ():Void;
	
	/**
	 * Transform a world point to local body frame.
	 */
	@:overload(function (out:Dynamic, worldPoint:Dynamic):Void {})
	@:overload(function (out:Array<Dynamic>, worldPoint:Dynamic):Void {})
	@:overload(function (out:Dynamic, worldPoint:Array<Dynamic>):Void {})
	function toLocalFrame (out:Array<Dynamic>, worldPoint:Array<Dynamic>):Void;
	
	/**
	 * Transform a local point to world frame.
	 */
	function toWorldFrame (out:Array<Dynamic>, localPoint:Array<Dynamic>):Void;
	
	/**
	 * This will rotate the Body by the given speed to the left (counter-clockwise).
	 */
	function rotateLeft (speed:Float):Void;
	
	/**
	 * This will rotate the Body by the given speed to the left (clockwise).
	 */
	function rotateRight (speed:Float):Void;
	
	/**
	 * Moves the Body forwards based on its current angle and the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveForward (speed:Float):Void;
	
	/**
	 * Moves the Body backwards based on its current angle and the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveBackward (speed:Float):Void;
	
	/**
	 * Applies a force to the Body that causes it to 'thrust' forwards, based on its current angle and the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function thrust (speed:Float):Void;
	
	/**
	 * Applies a force to the Body that causes it to 'thrust' backwards (in reverse), based on its current angle and the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function reverse (speed:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it to the left by setting its x velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveLeft (speed:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it to the right by setting its x velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveRight (speed:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it up by setting its y velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveUp (speed:Float):Void;
	
	/**
	 * If this Body is dynamic then this will move it down by setting its y velocity to the given speed.
	 * The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	 */
	function moveDown (speed:Float):Void;
	
	/**
	 * Internal method. This is called directly before the sprites are sent to the renderer and after the update function has finished.
	 */
	function preUpdate ():Void;
	
	/**
	 * Internal method. This is called directly before the sprites are sent to the renderer and after the update function has finished.
	 */
	function postUpdate ():Void;
	
	/**
	 * Resets the Body force, velocity (linear and angular) and rotation. Optionally resets damping and mass.
	 */
	function reset (x:Float, y:Float, ?resetDamping:Bool = false, ?resetMass:Bool = false):Void;
	
	/**
	 * Adds this physics body to the world.
	 */
	function addToWorld ():Void;
	
	/**
	 * Removes this physics body from the world.
	 */
	function removeFromWorld ():Void;
	
	/**
	 * Destroys this Body and all references it holds to other objects.
	 */
	function destroy ():Void;
	
	/**
	 * Removes all Shapes from this Body.
	 */
	function clearShapes ():Void;
	
	/**
	 * Add a shape to the body. You can pass a local transform when adding a shape, so that the shape gets an offset and an angle relative to the body center of mass.
	 * Will automatically update the mass properties and bounding radius.
	 */
	function addShape (shape:Dynamic, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Adds a Circle shape to this Body. You can control the offset from the center of the body and the rotation.
	 */
	function addCircle (radius:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Adds a Rectangle shape to this Body. You can control the offset from the center of the body and the rotation.
	 */
	function addRectangle (width:Float, height:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Adds a Plane shape to this Body. The plane is facing in the Y direction. You can control the offset from the center of the body and the rotation.
	 */
	function addPlane (?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Adds a Particle shape to this Body. You can control the offset from the center of the body and the rotation.
	 */
	function addParticle (?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Adds a Line shape to this Body.
	 * The line shape is along the x direction, and stretches from [-length/2, 0] to [length/2,0].
	 * You can control the offset from the center of the body and the rotation.
	 */
	function addLine (length:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Adds a Capsule shape to this Body.
	 * You can control the offset from the center of the body and the rotation.
	 */
	function addCapsule (length:Float, radius:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Reads a polygon shape path, and assembles convex shapes from that and puts them at proper offset points. The shape must be simple and without holes.
	 * This function expects the x.y values to be given in pixels. If you want to provide them at p2 world scales then call Body.data.fromPolygon directly.
	 */
	@:overload(function (options:Dynamic, options:Bool, options:Bool, options:Bool, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Bool {})
	@:overload(function (options:Dynamic, options:Bool, options:Bool, options:Float, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Bool {})
	@:overload(function (options:Dynamic, options:Bool, options:Bool, options:Bool, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Bool {})
	function addPolygon (options:Dynamic, options:Bool, options:Bool, options:Float, ?points0:Dynamic, ?points1:Dynamic, ?points2:Dynamic, ?points3:Dynamic, ?points4:Dynamic):Bool;
	
	/**
	 * Remove a shape from the body. Will automatically update the mass properties and bounding radius.
	 */
	@:overload(function (shape:Dynamic):Bool {})
	@:overload(function (shape:Dynamic):Bool {})
	@:overload(function (shape:Dynamic):Bool {})
	@:overload(function (shape:Dynamic):Bool {})
	function removeShape (shape:Dynamic):Bool;
	
	/**
	 * Clears any previously set shapes. Then creates a new Circle shape and adds it to this Body.
	 */
	function setCircle (radius:Float, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Void;
	
	/**
	 * Clears any previously set shapes. The creates a new Rectangle shape at the given size and offset, and adds it to this Body.
	 * If you wish to create a Rectangle to match the size of a Sprite or Image see Body.setRectangleFromSprite.
	 */
	function setRectangle (?width:Float = 16, ?height:Float = 16, ?offsetX:Float = 0, ?offsetY:Float = 0, ?rotation:Float = 0):Dynamic;
	
	/**
	 * Clears any previously set shapes.
	 * Then creates a Rectangle shape sized to match the dimensions and orientation of the Sprite given.
	 * If no Sprite is given it defaults to using the parent of this Body.
	 */
	@:overload(function (?sprite:phaser.gameobjects.Sprite):Dynamic {})
	function setRectangleFromSprite (?sprite:phaser.gameobjects.Image):Dynamic;
	
	/**
	 * Adds the given Material to all Shapes that belong to this Body.
	 * If you only wish to apply it to a specific Shape in this Body then provide that as the 2nd parameter.
	 */
	function setMaterial (material:phaser.physics.p2.Material, ?shape:Dynamic):Void;
	
	/**
	 * Updates the debug draw if any body shapes change.
	 */
	function shapeChanged ():Void;
	
	/**
	 * Reads the shape data from a physics data file stored in the Game.Cache and adds it as a polygon to this Body.
	 * The shape data format is based on the custom phaser export in.
	 */
	function addPhaserPolygon (key:String, object:String):Void;
	
	/**
	 * Add a polygon fixture. This is used during #loadPolygon.
	 */
	function addFixture (fixtureData:String):Array<Dynamic>;
	
	/**
	 * Reads the shape data from a physics data file stored in the Game.Cache and adds it as a polygon to this Body.
	 */
	function loadPolygon (key:String, object:String):Bool;
	
	/**
	 * Dynamic body. Dynamic bodies body can move and respond to collisions and forces.
	 */
	static var DYNAMIC:Float;
	
	/**
	 * Static body. Static bodies do not move, and they do not respond to forces or collision.
	 */
	static var STATIC:Float;
	
	/**
	 * Kinematic body. Kinematic bodies only moves according to its .velocity, and does not respond to collisions or force.
	 */
	static var KINEMATIC:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#static
	 */
	var a0:Bool;
	
	/**
	 * @name Phaser.Physics.P2.Body#kinematic
	 */
	var kinematic:Bool;
	
	/**
	 * @name Phaser.Physics.P2.Body#allowSleep
	 */
	var allowSleep:Bool;
	
	/**
	 * The angle of the Body in degrees from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement Body.angle = 450 is the same as Body.angle = 90.
	 * If you wish to work in radians instead of degrees use the property Body.rotation instead. Working in radians is faster as it doesn't have to convert values.
	 */
	var angle:Float;
	
	/**
	 * Damping is specified as a value between 0 and 1, which is the proportion of velocity lost per second.
	 */
	var angularDamping:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#angularForce
	 */
	var angularForce:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#angularVelocity
	 */
	var angularVelocity:Float;
	
	/**
	 * Damping is specified as a value between 0 and 1, which is the proportion of velocity lost per second.
	 */
	var damping:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#fixedRotation
	 */
	var fixedRotation:Bool;
	
	/**
	 * @name Phaser.Physics.P2.Body#inertia
	 */
	var inertia:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#mass
	 */
	var mass:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#motionState
	 */
	var motionState:Float;
	
	/**
	 * The angle of the Body in radians.
	 * If you wish to work in degrees instead of radians use the Body.angle property instead. Working in radians is faster as it doesn't have to convert values.
	 */
	var rotation:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#sleepSpeedLimit
	 */
	var sleepSpeedLimit:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#x
	 */
	var x:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#y
	 */
	var y:Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#id
	 */
	var id(default, null):Float;
	
	/**
	 * @name Phaser.Physics.P2.Body#debug
	 */
	var debug:Bool;
	
	/**
	 * A Body can be set to collide against the World bounds automatically if this is set to true. Otherwise it will leave the World.
	 * Note that this only applies if your World has bounds! The response to the collision should be managed via CollisionMaterials.
	 * Also note that when you set this it will only effect Body shapes that already exist. If you then add further shapes to your Body
	 * after setting this it will <em>not</em> proactively set them to collide with the bounds.
	 */
	var collideWorldBounds:Bool;
	
}
