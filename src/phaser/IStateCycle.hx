package phaser;

@:native("Phaser.IStateCycle")
extern interface IStateCycle {

	function preUpdate():Void;
	
	function update():Void;
	
	function render():Void;
	
	function postRender():Void;
	
	function destroy():Void;
	
}

