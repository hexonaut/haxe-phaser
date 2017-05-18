package phaser.physics.p2;

/**
* The Physics Body is typically linked to a single Sprite and defines properties that determine how the physics body is simulated.
* These properties affect how the body reacts to forces, what forces it generates on itself (to simulate friction), and how it reacts to collisions in the scene.
* In most cases, the properties are used to simulate physical effects. Each body also has its own property values that determine exactly how it reacts to forces and collisions in the scene.
* By default a single Rectangle shape is added to the Body that matches the dimensions of the parent Sprite. See addShape, removeShape, clearShapes to add extra shapes around the Body.
* Note: When bound to a Sprite to avoid single-pixel jitters on mobile devices we strongly recommend using Sprite sizes that are even on both axis, i.e. 128x128 not 127x127.
* Note: When a game object is given a P2 body it has its anchor x/y set to 0.5, so it becomes centered.
*/
@:native("Phaser.Physics.P2.Body")
extern class Body {

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
	* The Physics Body is typically linked to a single Sprite and defines properties that determine how the physics body is simulated.
	* These properties affect how the body reacts to forces, what forces it generates on itself (to simulate friction), and how it reacts to collisions in the scene.
	* In most cases, the properties are used to simulate physical effects. Each body also has its own property values that determine exactly how it reacts to forces and collisions in the scene.
	* By default a single Rectangle shape is added to the Body that matches the dimensions of the parent Sprite. See addShape, removeShape, clearShapes to add extra shapes around the Body.
	* Note: When bound to a Sprite to avoid single-pixel jitters on mobile devices we strongly recommend using Sprite sizes that are even on both axis, i.e. 128x128 not 127x127.
	* Note: When a game object is given a P2 body it has its anchor x/y set to 0.5, so it becomes centered.
	* 
	* @param game Game reference to the currently running game.
	* @param sprite The Sprite object this physics body belongs to.
	* @param x The x coordinate of this Body.
	* @param y The y coordinate of this Body.
	* @param mass The default mass of this Body (0 = static). - Default: 1
	*/
	function new(game:phaser.Game, ?sprite:phaser.Sprite, ?x:Float, ?y:Float, ?mass:Float);
	
	/**
	* -
	*/
	var allowSleep:Bool;
	
	/**
	* The angle of the Body in degrees from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	* Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement Body.angle = 450 is the same as Body.angle = 90.
	* If you wish to work in radians instead of degrees use the property Body.rotation instead. Working in radians is faster as it doesn't have to convert values. The angle of this Body in degrees.
	*/
	var angle:Float;
	
	/**
	* Damping is specified as a value between 0 and 1, which is the proportion of velocity lost per second. The angular damping acting acting on the body.
	*/
	var angularDamping:Float;
	
	/**
	* The angular force acting on the body.
	*/
	var angularForce:Float;
	
	/**
	* The angular velocity of the body.
	*/
	var angularVelocity:Float;
	
	/**
	* Array of CollisionGroups that this Bodies shapes collide with.
	*/
	var collidesWith:Array<phaser.physics.p2.CollisionGroup>;
	
	/**
	* A Body can be set to collide against the World bounds automatically if this is set to true. Otherwise it will leave the World.
	* Note that this only applies if your World has bounds! The response to the collision should be managed via CollisionMaterials.
	* Also note that when you set this it will only effect Body shapes that already exist. If you then add further shapes to your Body
	* after setting this it will *not* proactively set them to collide with the bounds. Should the Body collide with the World bounds?
	*/
	var collideWorldBounds:Bool;
	
	/**
	* Damping is specified as a value between 0 and 1, which is the proportion of velocity lost per second. The linear damping acting on the body in the velocity direction.
	*/
	var damping:Float;
	
	/**
	* The p2 Body data.
	*/
	var data:Dynamic;
	
	/**
	* Enable or disable debug drawing of this body
	*/
	var debug:Bool;
	
	/**
	* Reference to the debug body.
	*/
	var debugBody:phaser.physics.p2.BodyDebug;
	
	/**
	* -
	*/
	var fixedRotation:Bool;
	
	/**
	* The force applied to the body.
	*/
	var force:phaser.physics.p2.InversePointProxy;
	
	/**
	* Returns true if the Body is kinematic. Setting Body.kinematic to 'false' will make it static.
	*/
	var kinematic:Bool;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* A locally applied gravity force to the Body. Applied directly before the world step. NOTE: Not currently implemented.
	*/
	var gravity:phaser.Point;
	
	/**
	* The Body ID. Each Body that has been added to the World has a unique ID.
	*/
	var id:Float;
	
	/**
	* The inertia of the body around the Z axis..
	*/
	var inertia:Float;
	
	/**
	* The mass of the body.
	*/
	var mass:Float;
	
	/**
	* The type of motion this body has. Should be one of: Body.STATIC (the body does not move), Body.DYNAMIC (body can move and respond to collisions) and Body.KINEMATIC (only moves according to its .velocity).
	*/
	var motionState:Float;
	
	/**
	* The offset of the Physics Body from the Sprite x/y position.
	*/
	var offset:phaser.Point;
	
	/**
	* Dispatched when a first contact is created between shapes in two bodies.
	* This event is fired during the step, so collision has already taken place.
	* 
	* The event will be sent 5 arguments in this order:
	* 
	* The Phaser.Physics.P2.Body it is in contact with. *This might be null* if the Body was created directly in the p2 world.
	* The p2.Body this Body is in contact with.
	* The Shape from this body that caused the contact.
	* The Shape from the contact body.
	* The Contact Equation data array.
	*/
	var onBeginContact:phaser.Signal;
	
	/**
	* Dispatched when contact ends between shapes in two bodies.
	* This event is fired during the step, so collision has already taken place.
	* 
	* The event will be sent 4 arguments in this order:
	* 
	* The Phaser.Physics.P2.Body it is in contact with. *This might be null* if the Body was created directly in the p2 world.
	* The p2.Body this Body has ended contact with.
	* The Shape from this body that caused the original contact.
	* The Shape from the contact body.
	*/
	var onEndContact:phaser.Signal;
	
	/**
	* The angle of the Body in radians.
	* If you wish to work in degrees instead of radians use the Body.angle property instead. Working in radians is faster as it doesn't have to convert values. The angle of this Body in radians.
	*/
	var rotation:Float;
	
	/**
	* To avoid deleting this body during a physics step, and causing all kinds of problems, set removeNextStep to true to have it removed in the next preUpdate.
	*/
	var removeNextStep:Bool;
	
	/**
	* Reference to the parent Sprite.
	*/
	var sprite:phaser.Sprite;
	
	/**
	* .
	*/
	var sleepSpeedLimit:Float;
	
	/**
	* The type of physics system this body belongs to.
	*/
	var type:Float;
	
	/**
	* The velocity of the body. Set velocity.x to a negative value to move to the left, position to the right. velocity.y negative values move up, positive move down.
	*/
	var velocity:phaser.physics.p2.InversePointProxy;
	
	/**
	* Local reference to the P2 World.
	*/
	var world:phaser.physics.P2;
	
	/**
	* The x coordinate of this Body.
	*/
	var x:Float;
	
	/**
	* The y coordinate of this Body.
	*/
	var y:Float;
	
	/**
	* Adds this physics body to the world.
	*/
	function addToWorld():Void;
	
	/**
	* Adds a Capsule shape to this Body.
	* You can control the offset from the center of the body and the rotation.
	* 
	* @param length The distance between the end points in pixels.
	* @param radius Radius of the capsule in pixels.
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The Capsule shape that was added to the Body.
	*/
	function addCapsule(length:Float, radius:Float, ?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Adds a Circle shape to this Body. You can control the offset from the center of the body and the rotation.
	* 
	* @param radius The radius of this circle (in pixels)
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The Circle shape that was added to the Body.
	*/
	function addCircle(radius:Float, ?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Add a polygon fixture. This is used during #loadPolygon.
	* 
	* @param fixtureData The data for the fixture. It contains: isSensor, filter (collision) and the actual polygon shapes.
	* @return An array containing the generated shapes for the given polygon.
	*/
	function addFixture(fixtureData:String):Array<Dynamic>;
	
	/**
	* Adds a Line shape to this Body.
	* The line shape is along the x direction, and stretches from [-length/2, 0] to [length/2,0].
	* You can control the offset from the center of the body and the rotation.
	* 
	* @param length The length of this line (in pixels)
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The Line shape that was added to the Body.
	*/
	function addLine(length:Float, ?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Adds a Particle shape to this Body. You can control the offset from the center of the body and the rotation.
	* 
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The Particle shape that was added to the Body.
	*/
	function addParticle(?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Reads a polygon shape path, and assembles convex shapes from that and puts them at proper offset points. The shape must be simple and without holes.
	* This function expects the x.y values to be given in pixels. If you want to provide them at p2 world scales then call Body.data.fromPolygon directly.
	* 
	* @param options An object containing the build options:
	* @param options .optimalDecomp Set to true if you need optimal decomposition. Warning: very slow for polygons with more than 10 vertices.
	* @param options .skipSimpleCheck Set to true if you already know that the path is not intersecting itself.
	* @param options .removeCollinearPoints Set to a number (angle threshold value) to remove collinear points, or false to keep all points.
	* @param points An array of 2d vectors that form the convex or concave polygon.Either [[0,0], [0,1],...] or a flat array of numbers that will be interpreted as [x,y, x,y, ...],or the arguments passed can be flat x,y values e.g. `setPolygon(options, x,y, x,y, x,y, ...)` where `x` and `y` are numbers.
	* @return True on success, else false.
	*/
	function addPolygon(options:{optimalDecomp:Bool, skipSimpleCheck:Bool, removeCollinearPoints:Bool}, points:Array<Array<Float>>):Bool;
	
	/**
	* Reads the shape data from a physics data file stored in the Game.Cache and adds it as a polygon to this Body.
	* The shape data format is based on the output of the
	* {@link https://github.com/photonstorm/phaser/tree/master/resources/PhysicsEditor%20Exporter|custom phaser exporter} for
	* {@link https://www.codeandweb.com/physicseditor|PhysicsEditor}
	* 
	* @param key The key of the Physics Data file as stored in Game.Cache.
	* @param object The key of the object within the Physics data file that you wish to load the shape data from.
	* @return A list of created fixtures to be used with Phaser.Physics.P2.FixtureList
	*/
	function addPhaserPolygon(key:String, object:String):phaser.physics.p2.FixtureList;
	
	/**
	* Adds a Plane shape to this Body. The plane is facing in the Y direction. You can control the offset from the center of the body and the rotation.
	* 
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The Plane shape that was added to the Body.
	*/
	function addPlane(?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Adds a Rectangle shape to this Body. You can control the offset from the center of the body and the rotation.
	* 
	* @param width The width of the rectangle in pixels.
	* @param height The height of the rectangle in pixels.
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The shape that was added to the Body.
	*/
	function addRectangle(width:Float, height:Float, ?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Add a shape to the body. You can pass a local transform when adding a shape, so that the shape gets an offset and an angle relative to the body center of mass.
	* Will automatically update the mass properties and bounding radius.
	* If this Body had a previously set Collision Group you will need to re-apply it to the new Shape this creates.
	* 
	* @param shape The shape to add to the body.
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The shape that was added to the body.
	*/
	function addShape(shape:Dynamic, ?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Moves the shape offsets so their center of mass becomes the body center of mass.
	*/
	function adjustCenterOfMass():Void;
	
	/**
	* Apply damping, see http://code.google.com/p/bullet/issues/detail?id=74 for details.
	* 
	* @param dt Current time step.
	*/
	function applyDamping(dt:Float):Void;
	
	/**
	* Apply force to a world point.
	* 
	* This could for example be a point on the RigidBody surface. Applying force
	* this way will add to Body.force and Body.angularForce.
	* 
	* @param force The force vector to add.
	* @param worldX The world x point to apply the force on.
	* @param worldY The world y point to apply the force on.
	*/
	function applyForce(force:Array<Float>, worldX:Float, worldY:Float):Void;
	
	/**
	* Apply impulse to a point relative to the body.
	* This could for example be a point on the Body surface. An impulse is a force added to a body during a short
	* period of time (impulse = force * time). Impulses will be added to Body.velocity and Body.angularVelocity.
	* 
	* @param impulse The impulse vector to add, oriented in world space.
	* @param worldX A point relative to the body in world space. If not given, it is set to zero and all of the impulse will be exerted on the center of mass.
	* @param worldY A point relative to the body in world space. If not given, it is set to zero and all of the impulse will be exerted on the center of mass.
	*/
	function applyImpulse(impulse:Array<Float>, worldX:Float, worldY:Float):Void;
	
	/**
	* Apply impulse to a point local to the body.
	* 
	* This could for example be a point on the Body surface. An impulse is a force added to a body during a short
	* period of time (impulse = force * time). Impulses will be added to Body.velocity and Body.angularVelocity.
	* 
	* @param impulse The impulse vector to add, oriented in local space.
	* @param localX A local point on the body.
	* @param localY A local point on the body.
	*/
	function applyImpulseLocal(impulse:Array<Float>, localX:Float, localY:Float):Void;
	
	/**
	* Clears the collision data from the shapes in this Body. Optionally clears Group and/or Mask.
	* 
	* @param clearGroup Clear the collisionGroup value from the shape/s? - Default: true
	* @param clearMask Clear the collisionMask value from the shape/s? - Default: true
	* @param shape An optional Shape. If not provided the collision data will be cleared from all Shapes in this Body.
	*/
	function clearCollision(?clearGroup:Bool, ?cleanMask:Bool, ?shape:Dynamic):Void;
	
	/**
	* Removes all Shapes from this Body.
	*/
	function clearShapes():Void;
	
	/**
	* Adds the given CollisionGroup, or array of CollisionGroups, to the list of groups that this body will collide with and updates the collision masks.
	* 
	* @param group The Collision Group or Array of Collision Groups that this Bodies shapes will collide with.
	* @param callback Optional callback that will be triggered when this Body impacts with the given Group.
	* @param callbackContext The context under which the callback will be called.
	* @param shape An optional Shape. If not provided the collision mask will be added to all Shapes in this Body.
	*/
	function collides(group:Dynamic, ?callback:Dynamic, ?callbackContext:Dynamic, ?shape:Dynamic):Void;
	
	/**
	* Sets a callback to be fired any time a shape in this Body impacts with a shape in the given Body. The impact test is performed against body.id values.
	* The callback will be sent 4 parameters: This body, the body that impacted, the Shape in this body and the shape in the impacting body.
	* Note that the impact event happens after collision resolution, so it cannot be used to prevent a collision from happening.
	* It also happens mid-step. So do not destroy a Body during this callback, instead set safeDestroy to true so it will be killed on the next preUpdate.
	* 
	* @param object The object to send impact events for.
	* @param callback The callback to fire on impact. Set to null to clear a previously set callback.
	* @param callbackContext The context under which the callback will fire.
	*/
	function createBodyCallback(object:Dynamic, callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	* Sets a callback to be fired any time this Body impacts with the given Group. The impact test is performed against shape.collisionGroup values.
	* The callback will be sent 4 parameters: This body, the body that impacted, the Shape in this body and the shape in the impacting body.
	* This callback will only fire if this Body has been assigned a collision group.
	* Note that the impact event happens after collision resolution, so it cannot be used to prevent a collision from happening.
	* It also happens mid-step. So do not destroy a Body during this callback, instead set safeDestroy to true so it will be killed on the next preUpdate.
	* 
	* @param group The Group to send impact events for.
	* @param callback The callback to fire on impact. Set to null to clear a previously set callback.
	* @param callbackContext The context under which the callback will fire.
	*/
	function createGroupCallback(group:phaser.physics.p2.CollisionGroup, callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	* Destroys this Body and all references it holds to other objects.
	*/
	function destroy():Void;
	
	/**
	* Gets the collision bitmask from the groups this body collides with.
	* 
	* @return The bitmask.
	*/
	function getCollisionMask():Float;
	
	/**
	* Gets the velocity of a point in the body.
	* 
	* @param result A vector to store the result in.
	* @param relativePoint A world oriented vector, indicating the position of the point to get the velocity from.
	* @return The result vector.
	*/
	function getVelocityAtPoint(result:Array<Float>, relativePoint:Array<Float>):Array<Float>;
	
	/**
	* Reads the shape data from a physics data file stored in the Game.Cache and adds it as a polygon to this Body.
	* 
	* As well as reading the data from the Cache you can also pass `null` as the first argument and a
	* physics data object as the second. When doing this you must ensure the structure of the object is correct in advance.
	* 
	* For more details see the format of the Lime / Corona Physics Editor export.
	* 
	* @param key The key of the Physics Data file as stored in Game.Cache. Alternatively set to `null` and pass thedata as the 2nd argument.
	* @param object The key of the object within the Physics data file that you wish to load the shape data from,or if key is null pass the actual physics data object itself as this parameter.
	* @param scale Optionally resize the loaded polygon. - Default: 1
	* @return True on success, else false.
	*/
	function loadPolygon(key:String, object:String, ?scale:Float):Bool;
	
	/**
	* Moves the Body backwards based on its current angle and the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move backwards.
	*/
	function moveBackward(speed:Float):Void;
	
	/**
	* If this Body is dynamic then this will move it down by setting its y velocity to the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move down, in pixels per second.
	*/
	function moveDown(speed:Float):Void;
	
	/**
	* Moves the Body forwards based on its current angle and the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move forwards.
	*/
	function moveForward(speed:Float):Void;
	
	/**
	* If this Body is dynamic then this will move it to the left by setting its x velocity to the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move to the left, in pixels per second.
	*/
	function moveLeft(speed:Float):Void;
	
	/**
	* If this Body is dynamic then this will move it to the right by setting its x velocity to the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move to the right, in pixels per second.
	*/
	function moveRight(speed:Float):Void;
	
	/**
	* If this Body is dynamic then this will move it up by setting its y velocity to the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move up, in pixels per second.
	*/
	function moveUp(speed:Float):Void;
	
	/**
	* Internal method. This is called directly before the sprites are sent to the renderer and after the update function has finished.
	*/
	function preUpdate():Void;
	
	/**
	* Internal method. This is called directly before the sprites are sent to the renderer and after the update function has finished.
	*/
	function postUpdate():Void;
	
	/**
	* Removes the given CollisionGroup, or array of CollisionGroups, from the list of groups that this body will collide with and updates the collision masks.
	* 
	* @param group The Collision Group or Array of Collision Groups that this Bodies shapes should not collide with anymore.
	* @param clearCallback Clear the callback that will be triggered when this Body impacts with the given Group? - Default: true
	* @param shape An optional Shape. If not provided the updated collision mask will be added to all Shapes in this Body.
	*/
	function removeCollisionGroup(group:Dynamic, ?clearCallback:Bool, ?shape:Dynamic):Void;
	
	/**
	* Removes this physics body from the world.
	*/
	function removeFromWorld():Void;
	
	/**
	* Remove a shape from the body. Will automatically update the mass properties and bounding radius.
	* 
	* @param shape The shape to remove from the body.
	* @return True if the shape was found and removed, else false.
	*/
	function removeShape(shape:Dynamic):Bool;
	
	/**
	* Applies a force to the Body that causes it to 'thrust' backwards (in reverse), based on its current angle and the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should reverse.
	*/
	function reverse(speed:Float):Void;
	
	/**
	* This will rotate the Body by the given speed to the left (counter-clockwise).
	* 
	* @param speed The speed at which it should rotate.
	*/
	function rotateLeft(speed:Float):Void;
	
	/**
	* This will rotate the Body by the given speed to the left (clockwise).
	* 
	* @param speed The speed at which it should rotate.
	*/
	function rotateRight(speed:Float):Void;
	
	/**
	* Resets the Body force, velocity (linear and angular) and rotation. Optionally resets damping and mass.
	* 
	* @param x The new x position of the Body.
	* @param y The new x position of the Body.
	* @param resetDamping Resets the linear and angular damping.
	* @param resetMass Sets the Body mass back to 1.
	*/
	function reset(x:Float, y:Float, ?resetDamping:Bool, ?resetMass:Bool):Void;
	
	/**
	* Updates the debug draw if any body shapes change.
	*/
	function shapeChanged():Void;
	
	/**
	* Clears any previously set shapes. Then creates a new Circle shape and adds it to this Body.
	* If this Body had a previously set Collision Group you will need to re-apply it to the new Shape this creates.
	* 
	* @param radius The radius of this circle (in pixels)
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	*/
	function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Sets the given CollisionGroup to be the collision group for all shapes in this Body, unless a shape is specified.
	* This also resets the collisionMask.
	* 
	* @param group The Collision Group that this Bodies shapes will use.
	* @param shape An optional Shape. If not provided the collision group will be added to all Shapes in this Body.
	*/
	function setCollisionGroup(group:phaser.physics.p2.CollisionGroup, ?shape:Dynamic):Void;
	
	/**
	* Clears any previously set shapes. The creates a new Rectangle shape at the given size and offset, and adds it to this Body.
	* If you wish to create a Rectangle to match the size of a Sprite or Image see Body.setRectangleFromSprite.
	* If this Body had a previously set Collision Group you will need to re-apply it to the new Shape this creates.
	* 
	* @param width The width of the rectangle in pixels. - Default: 16
	* @param height The height of the rectangle in pixels. - Default: 16
	* @param offsetX Local horizontal offset of the shape relative to the body center of mass.
	* @param offsetY Local vertical offset of the shape relative to the body center of mass.
	* @param rotation Local rotation of the shape relative to the body center of mass, specified in radians.
	* @return The Rectangle shape that was added to the Body.
	*/
	function setRectangle(?width:Float, ?height:Float, ?offsetX:Float, ?offsetY:Float, ?rotation:Float):Dynamic;
	
	/**
	* Clears any previously set shapes.
	* Then creates a Rectangle shape sized to match the dimensions and orientation of the Sprite given.
	* If no Sprite is given it defaults to using the parent of this Body.
	* If this Body had a previously set Collision Group you will need to re-apply it to the new Shape this creates.
	* 
	* @param sprite The Sprite on which the Rectangle will get its dimensions.
	* @return The Rectangle shape that was added to the Body.
	*/
	function setRectangleFromSprite(sprite:Dynamic):Dynamic;
	
	/**
	* Adds the given Material to all Shapes that belong to this Body.
	* If you only wish to apply it to a specific Shape in this Body then provide that as the 2nd parameter.
	* 
	* @param material The Material that will be applied.
	* @param shape An optional Shape. If not provided the Material will be added to all Shapes in this Body.
	*/
	function setMaterial(material:phaser.physics.p2.Material, ?shape:Dynamic):Void;
	
	/**
	* Sets the Body damping and angularDamping to zero.
	*/
	function setZeroDamping():Void;
	
	/**
	* Sets the force on the body to zero.
	*/
	function setZeroForce():Void;
	
	/**
	* If this Body is dynamic then this will zero its angular velocity.
	*/
	function setZeroRotation():Void;
	
	/**
	* If this Body is dynamic then this will zero its velocity on both axis.
	*/
	function setZeroVelocity():Void;
	
	/**
	* Transform a world point to local body frame.
	* 
	* @param out The vector to store the result in.
	* @param worldPoint The input world vector.
	*/
	function toLocalFrame(out:Array<Float>, worldPoint:Array<Float>):Void;
	
	/**
	* Applies a force to the Body that causes it to 'thrust' forwards, based on its current angle and the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should thrust.
	*/
	function thrust(speed:Float):Void;
	
	/**
	* Applies a force to the Body that causes it to 'thrust' to the left, based on its current angle and the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move to the left.
	*/
	function thrustLeft(speed:Float):Void;
	
	/**
	* Applies a force to the Body that causes it to 'thrust' to the right, based on its current angle and the given speed.
	* The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second (1000ms).
	* 
	* @param speed The speed at which it should move to the right.
	*/
	function thrustRight(speed:Float):Void;
	
	/**
	* Transform a local point to world frame.
	* 
	* @param out The vector to store the result in.
	* @param localPoint The input local vector.
	*/
	function toWorldFrame(out:Array<Float>, localPoint:Array<Float>):Void;
	
	/**
	* Updates the collisionMask.
	* 
	* @param shape An optional Shape. If not provided the collision group will be added to all Shapes in this Body.
	*/
	function updateCollisionMask(?shape:Dynamic):Void;
	
	/**
	* Returns true if the Body is dynamic. Setting Body.dynamic to 'false' will make it static.
	*/
	@:native("dynamic")
	var isDynamic:Bool;
	
	/**
	* Returns true if the Body is static. Setting Body.static to 'false' will make it dynamic.
	*/
	@:native("static")
	var isStatic:Bool;
	
}

