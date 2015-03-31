package phaser.gameobjects.components;

@:native("Phaser.Component.InputEnabled")
extern interface InputEnabled {
	
	/**
	 * The Input Handler for this Game Object.
	 * 
	 * By default it is disabled. If you wish this Game Object to process input events you should enable it with: inputEnabled = true.
	 * 
	 * After you have done this, this property will be a reference to the Phaser InputHandler.
	 */
	var input:Dynamic;
	
	/**
	 * By default a Game Object won't process any input events. By setting inputEnabled to true a Phaser.InputHandler is created
	 * for this Game Object and it will then start to process click / touch events and more.
	 * 
	 * You can then access the Input Handler via this.input.
	 * 
	 * Note that Input related events are dispatched from this.events, i.e.: events.onInputDown.
	 * 
	 * If you set this property to false it will stop the Input Handler from processing any more input events.
	 */
	var inputEnabled:Bool;
	
}
