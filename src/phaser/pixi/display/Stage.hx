package phaser.pixi.display;

@:native("PIXI.Stage")
extern class Stage extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * Whether the stage is dirty and needs to have interactions updated
	 */
	var dirty:Bool;
	
}
