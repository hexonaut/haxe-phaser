package pixi;

@:native("PIXI.IEvent")
extern interface IEvent {

	var type:String;
	
	var content:Dynamic;
	
}

