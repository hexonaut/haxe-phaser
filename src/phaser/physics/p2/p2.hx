package phaser.physics.p2;

@:native("World")
extern class p2 {
	
	/**
	 * @constructor
	 */
	static var var ArrayBuffer:Dynamic;
	
	/**
	 * @constructor
	 */
	static var var ArrayBufferView:Dynamic;
	
	/**
	 * @constructor
	 */
	static var var DataView:Dynamic;
	
	/**
	 * Polygon class.
	 */
	function new ();
	
	/**
	 * Vertices that this polygon consists of. An array of array of numbers, example: [[0,0],[1,0],..]
	 */
	var vertices:Array<Dynamic>;
	
	/**
	 * The lower bound of the bounding box.
	 */
	var lowerBound:Array<Dynamic>;
	
	/**
	 * The upper bound of the bounding box.
	 */
	var upperBound:Array<Dynamic>;
	
	/**
	 * The resulting overlapping pairs. Will be filled with results during .getCollisionPairs().
	 */
	var result:Array<Dynamic>;
	
	/**
	 * The world to search for collision pairs in. To change it, use .setWorld()
	 */
	var world:phaser.physics.p2.p2;
	
	/**
	 * The bounding volume type to use in the broadphase algorithms.
	 */
	var boundingVolumeType:Float;
	
	/**
	 * Axis aligned bounding box type.
	 */
	static var AABB:Float;
	
	/**
	 * Bounding circle type.
	 */
	static var BOUNDING:Float;
	
	/**
	 * @property contactEquations
	 */
	var contactEquations:Dynamic;
	
	/**
	 * @property frictionEquations
	 */
	var frictionEquations:Dynamic;
	
	/**
	 * Whether to make friction equations in the upcoming contacts.
	 */
	var enableFriction:Bool;
	
	/**
	 * The friction slip force to use when creating friction equations.
	 */
	var slipForce:Float;
	
	/**
	 * The friction value to use in the upcoming friction equations.
	 */
	var frictionCoefficient:Float;
	
	/**
	 * Will be the .relativeVelocity in each produced FrictionEquation.
	 */
	var surfaceVelocity:Float;
	
	/**
	 * The restitution value to use in the next contact equations.
	 */
	var restitution:Float;
	
	/**
	 * The stiffness value to use in the next contact equations.
	 */
	var stiffness:Float;
	
	/**
	 * The stiffness value to use in the next friction equations.
	 */
	var frictionStiffness:Float;
	
	/**
	 * The relaxation value to use in the next friction equations.
	 */
	var frictionRelaxation:Float;
	
	/**
	 * Enable reduction of friction equations. If disabled, a box on a plane will generate 2 contact equations and 2 friction equations. If enabled, there will be only one friction equation. Same kind of simplifications are made  for all collision types.
	 */
	var enableFrictionReduction:Bool;
	
	/**
	 * Keeps track of the colliding bodies last step.
	 */
	var collidingBodiesLastStep:Dynamic;
	
	/**
	 * Contact skin size value to use in the next contact equations.
	 */
	var contactSkinSize:Float;
	
	/**
	 * The axis to sort along.
	 */
	var axisList:Array<Dynamic>;
	
	/**
	 * The axis to sort along. 0 means x-axis and 1 y-axis. If your bodies are more spread out over the X axis, set axisIndex to 0, and you will gain some performance.
	 */
	var axisIndex:Float;
	
	/**
	 * The type of constraint. May be one of Constraint.DISTANCE, Constraint.GEAR, Constraint.LOCK, Constraint.PRISMATIC or Constraint.REVOLUTE.
	 */
	var type:Float;
	
	/**
	 * Equations to be solved in this constraint
	 */
	var equations:Array<Dynamic>;
	
	/**
	 * First body participating in the constraint.
	 */
	var bodyA:Dynamic;
	
	/**
	 * Second body participating in the constraint.
	 */
	var bodyB:Dynamic;
	
	/**
	 * Set to true if you want the connected bodies to collide.
	 */
	var collideConnected:Bool;
	
	/**
	 * @static
	 */
	var DISTANCE:Float;
	
	/**
	 * @static
	 */
	var GEAR:Float;
	
	/**
	 * @static
	 */
	var LOCK:Float;
	
	/**
	 * @static
	 */
	var PRISMATIC:Float;
	
	/**
	 * @static
	 */
	var REVOLUTE:Float;
	
	/**
	 * Local anchor in body A.
	 */
	var localAnchorA:Array<Dynamic>;
	
	/**
	 * Local anchor in body B.
	 */
	var localAnchorB:Array<Dynamic>;
	
	/**
	 * The distance to keep.
	 */
	var distance:Float;
	
	/**
	 * Max force to apply.
	 */
	var maxForce:Float;
	
	/**
	 * If the upper limit is enabled or not.
	 */
	var upperLimitEnabled:Bool;
	
	/**
	 * The upper constraint limit.
	 */
	var upperLimit:Float;
	
	/**
	 * If the lower limit is enabled or not.
	 */
	var lowerLimitEnabled:Bool;
	
	/**
	 * The lower constraint limit.
	 */
	var lowerLimit:Float;
	
	/**
	 * Current constraint position. This is equal to the current distance between the world anchor points.
	 */
	var position:Float;
	
	/**
	 * The gear ratio.
	 */
	var ratio:Float;
	
	/**
	 * The relative angle
	 */
	var angle:Float;
	
	/**
	 * The offset of bodyB in bodyA's frame.
	 */
	var localOffsetB:Array<Dynamic>;
	
	/**
	 * The offset angle of bodyB in bodyA's frame.
	 */
	var localAngleB:Float;
	
	/**
	 * @property localAxisA
	 */
	var localAxisA:Dynamic;
	
	/**
	 * Equation used for the motor.
	 */
	var motorEquation:Dynamic;
	
	/**
	 * The current motor state. Enable or disable the motor using .enableMotor
	 */
	var motorEnabled:Bool;
	
	/**
	 * Set the target speed for the motor.
	 */
	var motorSpeed:Float;
	
	/**
	 * @property {Array} pivotA
	 */
	var pivotA:Array<Dynamic>;
	
	/**
	 * @property {Array} pivotB
	 */
	var pivotB:Array<Dynamic>;
	
	/**
	 * Vector from body i center of mass to the contact point.
	 */
	var contactPointA:Array<Dynamic>;
	
	/**
	 * World-oriented vector from body A center of mass to the contact point.
	 */
	var contactPointB:Array<Dynamic>;
	
	/**
	 * The normal vector, pointing out of body i
	 */
	var normalA:Array<Dynamic>;
	
	/**
	 * This property is set to true if this is the first impact between the bodies (not persistant contact).
	 */
	var firstImpact:Bool;
	
	/**
	 * The shape in body i that triggered this contact.
	 */
	var shapeA:Dynamic;
	
	/**
	 * The shape in body j that triggered this contact.
	 */
	var shapeB:Dynamic;
	
	/**
	 * Minimum force to apply when solving.
	 */
	var minForce:Float;
	
	/**
	 * The number of time steps needed to stabilize the constraint equation. Typically between 3 and 5 time steps.
	 */
	var relaxation:Float;
	
	/**
	 * The Jacobian entry of this equation. 6 numbers, 3 per body (x,y,angle).
	 */
	var G:Array<Dynamic>;
	
	/**
	 * Indicates if stiffness or relaxation was changed.
	 */
	var needsUpdate:Bool;
	
	/**
	 * The resulting constraint multiplier from the last solve. This is mostly equivalent to the force produced by the constraint.
	 */
	var multiplier:Float;
	
	/**
	 * Relative velocity.
	 */
	var relativeVelocity:Float;
	
	/**
	 * Whether this equation is enabled or not. If true, it will be added to the solver.
	 */
	var enabled:Bool;
	
	/**
	 * The default stiffness when creating a new Equation.
	 */
	static var DEFAULT:Float;
	
	/**
	 * Tangent vector that the friction force will act along. World oriented.
	 */
	var t:Array<Dynamic>;
	
	/**
	 * The contact material identifier
	 */
	var id:Float;
	
	/**
	 * First material participating in the contact material
	 */
	var materialA:Dynamic;
	
	/**
	 * Second material participating in the contact material
	 */
	var materialB:Dynamic;
	
	/**
	 * Friction to use in the contact of these two materials
	 */
	var friction:Float;
	
	/**
	 * PolyK.<em>P = function(x,y)
	 *     {
	 *         this.x = x;
	 *         this.y = y;
	 *         this.flag = false;
	 *     }
	 *     PolyK.</em>P.prototype.toString = function()
	 *     {
	 *         return "Point ["+this.x+", "+this.y+"]";
	 *     }
	 *     PolyK._P.dist = function(a,b)
	 *     {
	 *         var dx = b.x-a.x;
	 *         var dy = b.y-a.y;
	 *         return Math.sqrt(dx<em>dx + dy</em>dy);
	 *     }
	 * 
	 * <pre>PolyK._tp = [];
	 * for(var i=0; i&lt;10; i++) PolyK._tp.push(new PolyK._P(0,0));
	 * </pre>
	 */
	var exports:Dynamic;
	
	/**
	 * Alias for vec2.subtract
	 */
	static var sub:Dynamic;
	
	/**
	 * Alias for vec2.multiply
	 */
	static var mul:Dynamic;
	
	/**
	 * Alias for vec2.divide
	 */
	static var div:Dynamic;
	
	/**
	 * Alias for vec2.distance
	 */
	static var dist:Dynamic;
	
	/**
	 * Alias for vec2.squaredDistance
	 */
	static var sqrDist:Dynamic;
	
	/**
	 * Alias for vec2.length
	 */
	static var len:Dynamic;
	
	/**
	 * Alias for vec2.squaredLength
	 */
	static var sqrLen:Dynamic;
	
	/**
	 * The shapes of the body. The local transform of the shape in .shapes[i] is
	 * defined by .shapeOffsets[i] and .shapeAngles[i].
	 */
	var shapes:Array<Dynamic>;
	
	/**
	 * The local shape offsets, relative to the body center of mass. This is an
	 * array of Array.
	 */
	var shapeOffsets:Array<Dynamic>;
	
	/**
	 * The body-local shape angle transforms. This is an array of numbers (angles).
	 */
	var shapeAngles:Array<Dynamic>;
	
	/**
	 * The mass of the body.
	 */
	var mass:Float;
	
	/**
	 * The inverse mass of the body.
	 */
	var invMass:Float;
	
	/**
	 * The inertia of the body around the Z axis.
	 */
	var inertia:Float;
	
	/**
	 * The inverse inertia of the body.
	 */
	var invInertia:Float;
	
	/**
	 * Set to true if you want to fix the rotation of the body.
	 */
	var fixedRotation:Bool;
	
	/**
	 * The interpolated position of the body.
	 */
	var interpolatedPosition:Array<Dynamic>;
	
	/**
	 * The interpolated angle of the body.
	 */
	var interpolatedAngle:Float;
	
	/**
	 * The previous position of the body.
	 */
	var previousPosition:Array<Dynamic>;
	
	/**
	 * The previous angle of the body.
	 */
	var previousAngle:Float;
	
	/**
	 * The velocity of the body
	 */
	var velocity:Array<Dynamic>;
	
	/**
	 * Constraint velocity that was added to the body during the last step.
	 */
	var vlambda:Array<Dynamic>;
	
	/**
	 * Angular constraint velocity that was added to the body during last step.
	 */
	var wlambda:Array<Dynamic>;
	
	/**
	 * The angular velocity of the body, in radians per second.
	 */
	var angularVelocity:Float;
	
	/**
	 * The force acting on the body. Since the body force (and {{#crossLink "Body/angularForce:property"}}{{/crossLink}}) will be zeroed after each step, so you need to set the force before each step.
	 */
	var force:Array<Dynamic>;
	
	/**
	 * The angular force acting on the body. See {{#crossLink "Body/force:property"}}{{/crossLink}}.
	 */
	var angularForce:Float;
	
	/**
	 * The linear damping acting on the body in the velocity direction. Should be a value between 0 and 1.
	 */
	var damping:Float;
	
	/**
	 * The angular force acting on the body. Should be a value between 0 and 1.
	 */
	var angularDamping:Float;
	
	/**
	 * Bounding circle radius.
	 */
	var boundingRadius:Float;
	
	/**
	 * Bounding box of this body.
	 */
	var aabb:Dynamic;
	
	/**
	 * Indicates if the AABB needs update. Update it with {{#crossLink "Body/updateAABB:method"}}.updateAABB(){{/crossLink}}.
	 */
	var aabbNeedsUpdate:Bool;
	
	/**
	 * If true, the body will automatically fall to sleep. Note that you need to enable sleeping in the {{#crossLink "World"}}{{/crossLink}} before anything will happen.
	 */
	var allowSleep:Bool;
	
	/**
	 * One of {{#crossLink "Body/AWAKE:property"}}Body.AWAKE{{/crossLink}}, {{#crossLink "Body/SLEEPY:property"}}Body.SLEEPY{{/crossLink}} and {{#crossLink "Body/SLEEPING:property"}}Body.SLEEPING{{/crossLink}}.
	 * 
	 * The body is initially Body.AWAKE. If its velocity norm is below .sleepSpeedLimit, the sleepState will become Body.SLEEPY. If the body continues to be Body.SLEEPY for .sleepTimeLimit seconds, it will fall asleep (Body.SLEEPY).
	 */
	var sleepState:Float;
	
	/**
	 * If the speed (the norm of the velocity) is smaller than this value, the body is considered sleepy.
	 */
	var sleepSpeedLimit:Float;
	
	/**
	 * If the body has been sleepy for this sleepTimeLimit seconds, it is considered sleeping.
	 */
	var sleepTimeLimit:Float;
	
	/**
	 * Gravity scaling factor. If you want the body to ignore gravity, set this to zero. If you want to reverse gravity, set it to -1.
	 */
	var gravityScale:Float;
	
	/**
	 * The last time when the body went to SLEEPY state.
	 */
	var timeLastSleepy:Float;
	
	/**
	 * @event sleepy
	 */
	var sleepyEvent:Dynamic;
	
	/**
	 * @event sleep
	 */
	var sleepEvent:Dynamic;
	
	/**
	 * @event wakeup
	 */
	var wakeUpEvent:Dynamic;
	
	/**
	 * Dynamic body.
	 */
	static var DYNAMIC:Float;
	
	/**
	 * Static body.
	 */
	static var STATIC:Float;
	
	/**
	 * Kinematic body.
	 */
	static var KINEMATIC:Float;
	
	/**
	 * @property AWAKE
	 */
	static var AWAKE:Dynamic;
	
	/**
	 * @property SLEEPY
	 */
	static var SLEEPY:Dynamic;
	
	/**
	 * @property SLEEPING
	 */
	static var SLEEPING:Dynamic;
	
	/**
	 * Rest length of the spring.
	 */
	var restLength:Float;
	
	/**
	 * Rest angle of the spring.
	 */
	var restAngle:Float;
	
	/**
	 * The distance between the end points.
	 */
	var length:Float;
	
	/**
	 * The radius of the capsule.
	 */
	var radius:Float;
	
	/**
	 * Axes defined in the local frame.
	 */
	var axes:Array<Dynamic>;
	
	/**
	 * The center of mass of the Convex
	 */
	var centerOfMass:Array<Dynamic>;
	
	/**
	 * Triangulated version of this convex. The structure is Array of 3-Arrays, and each subarray contains 3 integers, referencing the vertices.
	 */
	var triangles:Array<Dynamic>;
	
	/**
	 * An array of numbers, or height values, that are spread out along the x axis.
	 */
	var data:Array<Dynamic>;
	
	/**
	 * Max value of the data
	 */
	var maxValue:Float;
	
	/**
	 * Max value of the data
	 */
	var minValue:Float;
	
	/**
	 * The width of each element
	 */
	var elementWidth:Float;
	
	/**
	 * Total width of the rectangle
	 */
	var width:Float;
	
	/**
	 * Total height of the rectangle
	 */
	var height:Float;
	
	/**
	 * Collision group that this shape belongs to (bit mask). See <a href="http://www.aurelienribon.com/blog/2011/07/box2d-tutorial-collision-filtering/">this tutorial</a>.
	 */
	var collisionGroup:Float;
	
	/**
	 * Collision mask of this shape. See .collisionGroup.
	 */
	var collisionMask:Float;
	
	/**
	 * Material to use in collisions for this Shape. If this is set to null, the world will use default material properties instead.
	 */
	var material:Dynamic;
	
	/**
	 * Area of this shape.
	 */
	var area:Float;
	
	/**
	 * Set to true if you want this shape to be a sensor. A sensor does not generate contacts, but it still reports contact events. This is good if you want to know if a shape is overlapping another shape, without them generating contacts.
	 */
	var sensor:Bool;
	
	/**
	 * @static
	 */
	var CIRCLE:Float;
	
	/**
	 * @static
	 */
	var PARTICLE:Float;
	
	/**
	 * @static
	 */
	var PLANE:Float;
	
	/**
	 * @static
	 */
	var CONVEX:Float;
	
	/**
	 * @static
	 */
	var LINE:Float;
	
	/**
	 * @static
	 */
	var RECTANGLE:Float;
	
	/**
	 * @static
	 */
	var CAPSULE:Float;
	
	/**
	 * @static
	 */
	var HEIGHTFIELD:Float;
	
	/**
	 * The number of iterations to do when solving. More gives better results, but is more expensive.
	 */
	var iterations:Float;
	
	/**
	 * The error tolerance, per constraint. If the total error is below this limit, the solver will stop iterating. Set to zero for as good solution as possible, but to something larger than zero to make computations faster.
	 */
	var tolerance:Float;
	
	/**
	 * Set to true to set all right hand side terms to zero when solving. Can be handy for a few applications.
	 */
	var useZeroRHS:Bool;
	
	/**
	 * Number of solver iterations that are done to approximate normal forces. When these iterations are done, friction force will be computed from the contact normal forces. These friction forces will override any other friction forces set from the World for example.
	 * The solver will use less iterations if the solution is below the .tolerance.
	 */
	var frictionIterations:Float;
	
	/**
	 * The number of iterations that were made during the last solve. If .tolerance is zero, this value will always be equal to .iterations, but if .tolerance is larger than zero, and the solver can quit early, then this number will be somewhere between 1 and .iterations.
	 */
	var usedIterations:Float;
	
	/**
	 * Function that is used to sort all equations before each solve.
	 */
	var equationSortFunction:Dynamic;
	
	/**
	 * Keys that are currently used.
	 */
	var keys:Array<Dynamic>;
	
	/**
	 * The array type to use for internal numeric computations.
	 */
	static var ARRAY:Array<Dynamic>;
	
	/**
	 * Current bodies in this island.
	 */
	var bodies:Array<Dynamic>;
	
	/**
	 * The resulting {{#crossLink "Island"}}{{/crossLink}}s.
	 */
	var islands:Array<Dynamic>;
	
	/**
	 * The resulting graph nodes.
	 */
	var nodes:Array<Dynamic>;
	
	/**
	 * The node queue, used when traversing the graph of nodes.
	 */
	var queue:Array<Dynamic>;
	
	/**
	 * The body that is contained in this node.
	 */
	var body:Dynamic;
	
	/**
	 * Neighboring IslandNodes
	 */
	var neighbors:Array<Dynamic>;
	
	/**
	 * If this node was visiting during the graph traversal.
	 */
	var visited:Bool;
	
	/**
	 * All springs in the world. To add a spring to the world, use {{#crossLink "World/addSpring:method"}}{{/crossLink}}.
	 */
	var springs:Array<Dynamic>;
	
	/**
	 * Disabled body collision pairs. See {{#crossLink "World/disableBodyCollision:method"}}.
	 */
	var disabledBodyCollisionPairs:Array<Dynamic>;
	
	/**
	 * The solver used to satisfy constraints and contacts. Default is {{#crossLink "GSSolver"}}{{/crossLink}}.
	 */
	var solver:Dynamic;
	
	/**
	 * The narrowphase to use to generate contacts.
	 */
	var narrowphase:Dynamic;
	
	/**
	 * The island manager of this world.
	 */
	var islandManager:Dynamic;
	
	/**
	 * Gravity in the world. This is applied on all bodies in the beginning of each step().
	 */
	var gravity:Array<Dynamic>;
	
	/**
	 * Gravity to use when approximating the friction max force (mu<em>mass</em>gravity).
	 */
	var frictionGravity:Float;
	
	/**
	 * Set to true if you want .frictionGravity to be automatically set to the length of .gravity.
	 */
	var useWorldGravityAsFrictionGravity:Bool;
	
	/**
	 * If the length of .gravity is zero, and .useWorldGravityAsFrictionGravity=true, then switch to using .frictionGravity for friction instead. This fallback is useful for gravityless games.
	 */
	var useFrictionGravityOnZeroGravity:Bool;
	
	/**
	 * Whether to do timing measurements during the step() or not.
	 */
	var doPofiling:Bool;
	
	/**
	 * How many millisecconds the last step() took. This is updated each step if .doProfiling is set to true.
	 */
	var lastStepTime:Float;
	
	/**
	 * The broadphase algorithm to use.
	 */
	var broadphase:Dynamic;
	
	/**
	 * User-added constraints.
	 */
	var constraints:Array<Dynamic>;
	
	/**
	 * Dummy default material in the world, used in .defaultContactMaterial
	 */
	var defaultMaterial:Dynamic;
	
	/**
	 * The default contact material to use, if no contact material was set for the colliding materials.
	 */
	var defaultContactMaterial:Dynamic;
	
	/**
	 * For keeping track of what time step size we used last step
	 */
	var lastTimeStep:Float;
	
	/**
	 * Enable to automatically apply spring forces each step.
	 */
	var applySpringForces:Bool;
	
	/**
	 * Enable to automatically apply body damping each step.
	 */
	var applyDamping:Bool;
	
	/**
	 * Enable to automatically apply gravity each step.
	 */
	var applyGravity:Bool;
	
	/**
	 * Enable/disable constraint solving in each step.
	 */
	var solveConstraints:Bool;
	
	/**
	 * The ContactMaterials added to the World.
	 */
	var contactMaterials:Array<Dynamic>;
	
	/**
	 * World time.
	 */
	var time:Float;
	
	/**
	 * Is true during the step().
	 */
	var stepping:Bool;
	
	/**
	 * Bodies that are scheduled to be removed at the end of the step.
	 */
	var bodiesToBeRemoved:Array<Dynamic>;
	
	/**
	 * Whether to enable island splitting. Island splitting can be an advantage for many things, including solver performance. See {{#crossLink "IslandManager"}}{{/crossLink}}.
	 */
	var islandSplit:Bool;
	
	/**
	 * Set to true if you want to the world to emit the "impact" event. Turning this off could improve performance.
	 */
	var emitImpactEvent:Bool;
	
	/**
	 * Fired after the step().
	 */
	var postStepEvent:Dynamic;
	
	/**
	 * Fired when a body is added to the world.
	 */
	var addBodyEvent:Dynamic;
	
	/**
	 * Fired when a body is removed from the world.
	 */
	var removeBodyEvent:Dynamic;
	
	/**
	 * Fired when a spring is added to the world.
	 */
	var addSpringEvent:Dynamic;
	
	/**
	 * Fired when a first contact is created between two bodies. This event is fired after the step has been done.
	 */
	var impactEvent:Dynamic;
	
	/**
	 * Fired after the Broadphase has collected collision pairs in the world.
	 * Inside the event handler, you can modify the pairs array as you like, to
	 * prevent collisions between objects that you don't want.
	 */
	var postBroadphaseEvent:Dynamic;
	
	/**
	 * How to deactivate bodies during simulation. Possible modes are: {{#crossLink "World/NO_SLEEPING:property"}}World.NO_SLEEPING{{/crossLink}}, {{#crossLink "World/BODY_SLEEPING:property"}}World.BODY_SLEEPING{{/crossLink}} and {{#crossLink "World/ISLAND_SLEEPING:property"}}World.ISLAND_SLEEPING{{/crossLink}}.
	 * If sleeping is enabled, you might need to {{#crossLink "Body/wakeUp:method"}}wake up{{/crossLink}} the bodies if they fall asleep when they shouldn't. If you want to enable sleeping in the world, but want to disable it for a particular body, see {{#crossLink "Body/allowSleep:property"}}Body.allowSleep{{/crossLink}}.
	 */
	var sleepMode:Float;
	
	/**
	 * Fired when two shapes starts start to overlap. Fired in the narrowphase, during step.
	 */
	var beginContactEvent:Dynamic;
	
	/**
	 * Fired when two shapes stop overlapping, after the narrowphase (during step).
	 */
	var endContactEvent:Dynamic;
	
	/**
	 * Fired just before equations are added to the solver to be solved. Can be used to control what equations goes into the solver.
	 */
	var preSolveEvent:Dynamic;
	
	/**
	 * Never deactivate bodies.
	 */
	static var NO:Float;
	
	/**
	 * Deactivate individual bodies if they are sleepy.
	 */
	static var BODY:Float;
	
	/**
	 * Deactivates bodies that are in contact, if all of them are sleepy. Note that you must enable {{#crossLink "World/islandSplit:property"}}.islandSplit{{/crossLink}} for this to work.
	 */
	static var ISLAND:Float;
	
}
