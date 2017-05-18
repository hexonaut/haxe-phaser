package phaser;

/**
* Enumeration categorizing operational modes of pointers.
* 
* PointerType values represent valid bitmasks.
* For example, a value representing both Mouse and Touch devices
* can be expressed as `PointerMode.CURSOR | PointerMode.CONTACT`.
* 
* Values may be added for future mode categorizations.
*/
@:native("Phaser.PointerMode")
extern class PointerMode {

	/**
	* A 'CURSOR' is a pointer with a *passive cursor* such as a mouse, touchpad, watcom stylus, or even TV-control arrow-pad.
	* 
	* It has the property that a cursor is passively moved without activating the input.
	* This currently corresponds with {@link Phaser.Pointer#isMouse} property.
	*/
	static var CURSOR:Float;
	
	/**
	* A 'CONTACT' pointer has an *active cursor* that only tracks movement when actived; notably this is a touch-style input.
	*/
	static var CONTACT:Float;
	
}

