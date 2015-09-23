package phaser.animation.creature;

@:native("quat")
extern class gl-matrix {
	
	/**
	 * Alias for {@link vec2.subtract}
	 */
	var sub:Dynamic;
	
	/**
	 * Alias for {@link vec2.multiply}
	 */
	var mul:Dynamic;
	
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
	 * Sets a quaternion to represent the shortest rotation from one
	 * vector to another.
	 * 
	 * Both vectors are assumed to be unit length.
	 */
	var rotationTo:Dynamic;
	
	/**
	 * Sets the specified quaternion with values corresponding to the given
	 * axes. Each axis is a vec3 and is expected to be unit length and
	 * perpendicular to all other specified axes.
	 */
	var setAxes:Dynamic;
	
	/**
	 * Creates a new quat initialized with values from an existing quaternion
	 */
	var clone:Dynamic;
	
	/**
	 * Creates a new quat initialized with the given values
	 */
	var fromValues:Dynamic;
	
	/**
	 * Copy the values from one quat to another
	 */
	var copy:Dynamic;
	
	/**
	 * Set the components of a quat to the given values
	 */
	var set:Dynamic;
	
	/**
	 * Adds two quat's
	 */
	var add:Dynamic;
	
	/**
	 * Scales a quat by a scalar number
	 */
	var scale:Dynamic;
	
	/**
	 * Calculates the dot product of two quat's
	 */
	var dot:Dynamic;
	
	/**
	 * Performs a linear interpolation between two quat's
	 */
	var lerp:Dynamic;
	
	/**
	 * Calculates the length of a quat
	 */
	var length:Dynamic;
	
	/**
	 * Calculates the squared length of a quat
	 */
	var squaredLength:Dynamic;
	
	/**
	 * Normalize a quat
	 */
	var normalize:Dynamic;
	
}
