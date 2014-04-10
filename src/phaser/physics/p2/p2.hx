package phaser.physics.p2;

@:native("World")
extern class p2 {
	
	/**
	 * Alias for {@link mat2.multiply}
	 */
	var mul:Dynamic;
	
	/**
	 * Alias for {@link vec2.subtract}
	 */
	var sub:Dynamic;
	
	/**
	 * Alias for {@link vec2.divide}
	 */
	var div:Dynamic;
	
	/**
	 * Alias for {@link vec2.distance}
	 */
	var dist:Dynamic;
	
	/**
	 * Alias for {@link vec2.squaredDistance}
	 */
	var sqrDist:Dynamic;
	
	/**
	 * Alias for {@link vec2.length}
	 */
	var len:Dynamic;
	
	/**
	 * Alias for {@link vec2.squaredLength}
	 */
	var sqrLen:Dynamic;
	
	/**
	 * Perform some operation over an array of vec2s.
	 */
	var forEach:Dynamic;
	
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
	 * Set to true to use bounding box checks instead of bounding radius.
	 */
	var useBoundingBoxes:Bool;
	
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
	 * The root node of the QuadTree which covers the entire area being segmented.
	 */
	var root:Dynamic;
	
	/**
	 * List of bodies currently in the broadphase.
	 */
	var axisListX:Array<Dynamic>;
	
	/**
	 * List of bodies currently in the broadphase.
	 */
	var axisListY:Array<Dynamic>;
	
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
	 * onstraint.prototype.update = function(){
	 *     throw new Error("method update() not implmemented in this Constraint subclass!");
	 * };
	 */
	var DISTANCE:Dynamic;
	
	/**
	 * The distance to keep.
	 */
	var distance:Float;
	
	/**
	 * The relative angle
	 */
	var angle:Float;
	
	/**
	 * The gear ratio
	 */
	var ratio:Float;
	
	/**
	 * @property localAnchorA
	 */
	var localAnchorA:Dynamic;
	
	/**
	 * @property localAnchorB
	 */
	var localAnchorB:Dynamic;
	
	/**
	 * @property localAxisA
	 */
	var localAxisA:Dynamic;
	
	/**
	 * The position of anchor A relative to anchor B, along the constraint axis.
	 */
	var position:Float;
	
	/**
	 * Set to true to enable lower limit.
	 */
	var lowerLimitEnabled:Bool;
	
	/**
	 * Set to true to enable upper limit.
	 */
	var upperLimitEnabled:Bool;
	
	/**
	 * Lower constraint limit. The constraint position is forced to be larger than this value.
	 */
	var lowerLimit:Float;
	
	/**
	 * Upper constraint limit. The constraint position is forced to be smaller than this value.
	 */
	var upperLimit:Float;
	
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
	 * Vector from body i center of mass to the contact point.
	 */
	var ri:Array<Dynamic>;
	
	/**
	 * Vector from body j center of mass to the contact point.
	 */
	var rj:Array<Dynamic>;
	
	/**
	 * The normal vector, pointing out of body i
	 */
	var ni:Array<Dynamic>;
	
	/**
	 * Set to true if this is the first impact between the bodies (not persistant contact).
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
	 * Minimum force to apply when solving
	 */
	var minForce:Float;
	
	/**
	 * Max force to apply when solving
	 */
	var maxForce:Float;
	
	/**
	 * First body participating in the constraint
	 */
	var bi:Dynamic;
	
	/**
	 * Second body participating in the constraint
	 */
	var bj:Dynamic;
	
	/**
	 * The number of time steps needed to stabilize the constraint equation. Typically between 3 and 5 time steps.
	 */
	var relaxation:Float;
	
	/**
	 * The Jacobian entry of this equation. 6 numbers, 3 per body (x,y,angle).
	 */
	var G:Array<Dynamic>;
	
	/**
	 * this.xi = vec2.create();
	 *     this.xj = vec2.create();
	 *     this.ai = 0;
	 *     this.aj = 0;
	 */
	var offset:Dynamic;
	
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
	 * Tangent vector that the friction force will act along, in world coords.
	 */
	var t:Dynamic;
	
	/**
	 * A ContactEquation connected to this friction. The contact equation can be used to rescale the max force for the friction.
	 */
	var contactEquation:Dynamic;
	
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
	 * The shapes of the body. The local transform of the shape in .shapes[i] is
	 * defined by .shapeOffsets[i] and .shapeAngles[i].
	 */
	var shapes:Array<Dynamic>;
	
	/**
	 * The local shape offsets, relative to the body center of mass. This is an
	 * array of Float32Array.
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
	 * The velocity of the body
	 */
	var velocity:Dynamic;
	
	/**
	 * Constraint velocity that was added to the body during the last step.
	 */
	var vlambda:Dynamic;
	
	/**
	 * Angular constraint velocity that was added to the body during last step.
	 */
	var wlambda:Dynamic;
	
	/**
	 * The angular velocity of the body
	 */
	var angularVelocity:Float;
	
	/**
	 * The force acting on the body
	 */
	var force:Dynamic;
	
	/**
	 * The angular force acting on the body
	 */
	var angularForce:Float;
	
	/**
	 * The linear damping acting on the body in the velocity direction
	 */
	var damping:Float;
	
	/**
	 * The angular force acting on the body
	 */
	var angularDamping:Float;
	
	/**
	 * The type of motion this body has. Should be one of: Body.STATIC (the body
	 * does not move), Body.DYNAMIC (body can move and respond to collisions)
	 * and Body.KINEMATIC (only moves according to its .velocity).
	 */
	var motionState:Float;
	
	/**
	 * Bounding circle radius
	 */
	var boundingRadius:Float;
	
	/**
	 * Bounding box of this body
	 */
	var aabb:Dynamic;
	
	/**
	 * Indicates if the AABB needs update. Update it with .updateAABB()
	 */
	var aabbNeedsUpdate:Bool;
	
	/**
	 * If true, the body will automatically fall to sleep.
	 */
	var allowSleep:Bool;
	
	/**
	 * One of Body.AWAKE, Body.SLEEPY, Body.SLEEPING
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
	 * The distance between the end points.
	 */
	var length:Float;
	
	/**
	 * The radius of the capsule.
	 */
	var radius:Float;
	
	/**
	 * The center of mass of the Convex
	 */
	var centerOfMass:Dynamic;
	
	/**
	 * Triangulated version of this convex. The structure is Array of 3-Arrays, and each subarray contains 3 integers, referencing the vertices.
	 */
	var triangles:Array<Dynamic>;
	
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
	 * The error tolerance. If the total error is below this limit, the solver will stop. Set to zero for as good solution as possible.
	 */
	var tolerance:Float;
	
	/**
	 * Whether to use .stiffness and .relaxation parameters from the Solver instead of each Equation individually.
	 */
	var useGlobalEquationParameters:Bool;
	
	/**
	 * Set to true to set all right hand side terms to zero when solving. Can be handy for a few applications.
	 */
	var useZeroRHS:Bool;
	
	/**
	 * Number of friction iterations to skip. If .skipFrictionIterations=2, then no FrictionEquations will be iterated until the third iteration.
	 */
	var skipFrictionIterations:Float;
	
	/**
	 * Current bodies in this island.
	 */
	var bodies:Array<Dynamic>;
	
	/**
	 * The solver used in the workers.
	 */
	var subsolver:Dynamic;
	
	/**
	 * Number of islands. Read only.
	 */
	var numIslands:Float;
	
	/**
	 * Fires before an island is solved.
	 */
	var beforeSolveIslandEvent:Dynamic;
	
	/**
	 * Function that is used to sort all equations before each solve.
	 */
	var equationSortFunction:Dynamic;
	
	/**
	 * The array type to use for internal numeric computations.
	 */
	static var ARRAY:Array<Dynamic>;
	
	/**
	 * All springs in the world.
	 */
	var springs:Array<Dynamic>;
	
	/**
	 * The solver used to satisfy constraints and contacts.
	 */
	var solver:Dynamic;
	
	/**
	 * The narrowphase to use to generate contacts.
	 */
	var narrowphase:Dynamic;
	
	/**
	 * Gravity in the world. This is applied on all bodies in the beginning of each step().
	 */
	var a0:Dynamic;
	
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
	 * Friction between colliding bodies. This value is used if no matching ContactMaterial is found for a Material pair.
	 */
	var defaultFriction:Float;
	
	/**
	 * Default coefficient of restitution between colliding bodies. This value is used if no matching ContactMaterial is found for a Material pair.
	 */
	var defaultRestitution:Float;
	
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
	 * Set to true if you want to the world to emit the "impact" event. Turning this off could improve performance.
	 */
	var emitImpactEvent:Bool;
	
	/**
	 * Fired after the step().
	 */
	var postStepEvent:Dynamic;
	
	/**
	 * @event addBody
	 */
	var addBodyEvent:Dynamic;
	
	/**
	 * @event removeBody
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
	
}
