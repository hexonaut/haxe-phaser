package phaser.math;

@:native("Phaser.Math")
extern class Math {
	
	/**
	 * Twice PI.
	 */
	var Phaser:Float;
	
	/**
	 * Two number are fuzzyEqual if their difference is less than epsilon.
	 */
	function fuzzyEqual (a:Float, b:Float, ?epsilon:Float = 0.0001):Bool;
	
	/**
	 * a is fuzzyLessThan b if it is less than b + epsilon.
	 */
	function fuzzyLessThan (a:Float, b:Float, ?epsilon:Float = 0.0001):Bool;
	
	/**
	 * a is fuzzyGreaterThan b if it is more than b - epsilon.
	 */
	function fuzzyGreaterThan (a:Float, b:Float, ?epsilon:Float = 0.0001):Bool;
	
	/**
	 * Applies a fuzzy ceil to the given value.
	 */
	function fuzzyCeil (val:Float, ?epsilon:Float = 0.0001):Float;
	
	/**
	 * Applies a fuzzy floor to the given value.
	 */
	function fuzzyFloor (val:Float, ?epsilon:Float = 0.0001):Float;
	
	/**
	 * Averages all values passed to the function and returns the result.
	 */
	function average ():Float;
	
	/**
	 * Snap a value to nearest grid slice, using rounding.
	 * 
	 * Example: if you have an interval gap of 5 and a position of 12... you will snap to 10 whereas 14 will snap to 15.
	 */
	function snapTo (input:Float, gap:Float, ?start:Float):Float;
	
	/**
	 * Snap a value to nearest grid slice, using floor.
	 * 
	 * Example: if you have an interval gap of 5 and a position of 12... you will snap to 10.
	 * As will 14 snap to 10... but 16 will snap to 15.
	 */
	function snapToFloor (input:Float, gap:Float, ?start:Float):Float;
	
	/**
	 * Snap a value to nearest grid slice, using ceil.
	 * 
	 * Example: if you have an interval gap of 5 and a position of 12... you will snap to 15.
	 * As will 14 will snap to 15... but 16 will snap to 20.
	 */
	function snapToCeil (input:Float, gap:Float, ?start:Float):Float;
	
	/**
	 * Round to some place comparative to a base, default is 10 for decimal place.
	 * The place is represented by the power applied to base to get that place.
	 * 
	 * <pre>e.g. 2000/7 ~= 285.714285714285714285714 ~= (bin)100011101.1011011011011011
	 * 
	 * roundTo(2000/7,3) === 0
	 * roundTo(2000/7,2) == 300
	 * roundTo(2000/7,1) == 290
	 * roundTo(2000/7,0) == 286
	 * roundTo(2000/7,-1) == 285.7
	 * roundTo(2000/7,-2) == 285.71
	 * roundTo(2000/7,-3) == 285.714
	 * roundTo(2000/7,-4) == 285.7143
	 * roundTo(2000/7,-5) == 285.71429
	 * 
	 * roundTo(2000/7,3,2)  == 288       -- 100100000
	 * roundTo(2000/7,2,2)  == 284       -- 100011100
	 * roundTo(2000/7,1,2)  == 286       -- 100011110
	 * roundTo(2000/7,0,2)  == 286       -- 100011110
	 * roundTo(2000/7,-1,2) == 285.5     -- 100011101.1
	 * roundTo(2000/7,-2,2) == 285.75    -- 100011101.11
	 * roundTo(2000/7,-3,2) == 285.75    -- 100011101.11
	 * roundTo(2000/7,-4,2) == 285.6875  -- 100011101.1011
	 * roundTo(2000/7,-5,2) == 285.71875 -- 100011101.10111
	 * </pre>
	 * 
	 * Note what occurs when we round to the 3rd space (8ths place), 100100000, this is to be assumed
	 * because we are rounding 100011.1011011011011011 which rounds up.
	 */
	function roundTo (value:Float, place:Float, base:Float):Float;
	
	/**
	 * Find the angle of a segment from (x1, y1) -> (x2, y2).
	 */
	function angleBetween (x1:Float, y1:Float, x2:Float, y2:Float):Float;
	
	/**
	 * Find the angle of a segment from (x1, y1) -> (x2, y2).
	 * Note that the difference between this method and Math.angleBetween is that this assumes the y coordinate travels
	 * down the screen.
	 */
	function angleBetweenY (x1:Float, y1:Float, x2:Float, y2:Float):Float;
	
	/**
	 * Find the angle of a segment from (point1.x, point1.y) -> (point2.x, point2.y).
	 */
	function angleBetweenPoints (point1:phaser.geom.Point, point2:phaser.geom.Point):Float;
	
	/**
	 * Find the angle of a segment from (point1.x, point1.y) -> (point2.x, point2.y).
	 */
	function angleBetweenPointsY (point1:phaser.geom.Point, point2:phaser.geom.Point):Float;
	
	/**
	 * Reverses an angle.
	 */
	function reverseAngle (angleRad:Float):Float;
	
	/**
	 * Normalizes an angle to the [0,2pi) range.
	 */
	function normalizeAngle (angleRad:Float):Float;
	
	/**
	 * Adds the given amount to the value, but never lets the value go over the specified maximum.
	 */
	function maxAdd (value:Float, amount:Float, max:Float):Float;
	
	/**
	 * Subtracts the given amount from the value, but never lets the value go below the specified minimum.
	 */
	function minSub (value:Float, amount:Float, min:Float):Float;
	
	/**
	 * Ensures that the value always stays between min and max, by wrapping the value around.
	 * 
	 * If max is not larger than min the result is 0.
	 */
	function wrap (value:Float, min:Float, max:Float):Float;
	
	/**
	 * Adds value to amount and ensures that the result always stays between 0 and max, by wrapping the value around.
	 * 
	 * Values <em>must</em> be positive integers, and are passed through Math.abs. See {@link Phaser.Math#wrap} for an alternative.
	 */
	function wrapValue (value:Float, amount:Float, max:Float):Float;
	
	/**
	 * Returns true if the number given is odd.
	 */
	function isOdd (n:Int):Bool;
	
	/**
	 * Returns true if the number given is even.
	 */
	function isEven (n:Int):Bool;
	
	/**
	 * Variation of Math.min that can be passed either an array of numbers or the numbers as parameters.
	 * 
	 * Prefer the standard Math.min function when appropriate.
	 */
	function min ():Float;
	
	/**
	 * Variation of Math.max that can be passed either an array of numbers or the numbers as parameters.
	 * 
	 * Prefer the standard Math.max function when appropriate.
	 */
	function max ():Float;
	
	/**
	 * Variation of Math.min that can be passed a property and either an array of objects or the objects as parameters.
	 * It will find the lowest matching property value from the given objects.
	 */
	function minProperty ():Float;
	
	/**
	 * Variation of Math.max that can be passed a property and either an array of objects or the objects as parameters.
	 * It will find the largest matching property value from the given objects.
	 */
	function maxProperty ():Float;
	
	/**
	 * Keeps an angle value between -180 and +180; or -PI and PI if radians.
	 */
	function wrapAngle (angle:Float, ?radians:Bool = false):Float;
	
	/**
	 * A Linear Interpolation Method, mostly used by Phaser.Tween.
	 */
	function linearInterpolation (v:Array<Dynamic>, k:Float):Float;
	
	/**
	 * A Bezier Interpolation Method, mostly used by Phaser.Tween.
	 */
	function bezierInterpolation (v:Array<Dynamic>, k:Float):Float;
	
	/**
	 * A Catmull Rom Interpolation Method, mostly used by Phaser.Tween.
	 */
	function catmullRomInterpolation (v:Array<Dynamic>, k:Float):Float;
	
	/**
	 * Calculates a linear (interpolation) value over t.
	 */
	function linear (p0:Float, p1:Float, t:Float):Float;
	
	/**
	 * Calculates a catmum rom value.
	 */
	function catmullRom (p0:Float, p1:Float, p2:Float, p3:Float, t:Float):Float;
	
	/**
	 * The (absolute) difference between two values.
	 */
	function difference (a:Float, b:Float):Float;
	
	/**
	 * Round to the next whole number <em>away</em> from zero.
	 */
	function roundAwayFromZero (value:Float):Int;
	
	/**
	 * Generate a sine and cosine table simultaneously and extremely quickly.
	 * The parameters allow you to specify the length, amplitude and frequency of the wave.
	 * This generator is fast enough to be used in real-time.
	 * Code based on research by Franky of scene.at
	 */
	function sinCosGenerator (length:Float, sinAmplitude:Float, cosAmplitude:Float, frequency:Float):Dynamic;
	
	/**
	 * Returns the euclidian distance between the two given set of coordinates.
	 */
	function distance (x1:Float, y1:Float, x2:Float, y2:Float):Float;
	
	/**
	 * Returns the euclidean distance squared between the two given set of
	 * coordinates (cuts out a square root operation before returning).
	 */
	function distanceSq (x1:Float, y1:Float, x2:Float, y2:Float):Float;
	
	/**
	 * Returns the distance between the two given set of coordinates at the power given.
	 */
	function distancePow (x1:Float, y1:Float, x2:Float, y2:Float, ?pow:Float = 2):Float;
	
	/**
	 * Force a value within the boundaries by clamping x to the range [a, b].
	 */
	function clamp (x:Float, a:Float, b:Float):Float;
	
	/**
	 * Clamp x to the range [a, Infinity).
	 * Roughly the same as Math.max(x, a), except for NaN handling.
	 */
	function clampBottom (x:Float, a:Float):Float;
	
	/**
	 * Checks if two values are within the given tolerance of each other.
	 */
	function within (a:Float, b:Float, tolerance:Float):Bool;
	
	/**
	 * Linear mapping from range <a1, a2> to range <b1, b2>
	 */
	function mapLinear (x:Float, a1:Float, a2:Float, b1:Float, b2:Float):Float;
	
	/**
	 * Smoothstep function as detailed at <a href='http://en.wikipedia.org/wiki/Smoothstep'>http://en.wikipedia.org/wiki/Smoothstep</a>
	 */
	function smoothstep (x:Float, min:Float, max:Float):Float;
	
	/**
	 * Smootherstep function as detailed at <a href='http://en.wikipedia.org/wiki/Smoothstep'>http://en.wikipedia.org/wiki/Smoothstep</a>
	 */
	function smootherstep (x:Float, min:Float, max:Float):Float;
	
	/**
	 * A value representing the sign of the value: -1 for negative, +1 for positive, 0 if value is 0.
	 * 
	 * This works differently from Math.sign for values of NaN and -0, etc.
	 */
	function sign (x:Float):Int;
	
	/**
	 * Work out what percentage value a is of value b using the given base.
	 */
	function percent (a:Float, b:Float, ?base:Float = 0):Float;
	
	/**
	 * Convert degrees to radians.
	 */
	function degToRad (degrees:Float):Float;
	
	/**
	 * Convert degrees to radians.
	 */
	function radToDeg (radians:Float):Float;
	
}
