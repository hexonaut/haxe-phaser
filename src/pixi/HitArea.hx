package pixi;

@:native("PIXI.HitArea")
extern interface HitArea {

	function contains(x:Float, y:Float):Bool;
	
}

