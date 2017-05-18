package phaser.plugin;

@:native("Phaser.Plugin.SaveCPU")
extern class SaveCPU extends phaser.Plugin {

	var renderOnFPS:Float;
	
	var renderOnPointerChange:Bool;
	
	function forceRender():Void;
	
}

