package pixi;

@:native("PIXI.AtlasReader")
extern class AtlasReader {

	function new(text:String);
	
	var lines:Array<String>;
	
	var index:Float;
	
	function trim(value:String):String;
	
	function readLine():String;
	
	function readValue():String;
	
	function readTuple(tuple:Float):Float;
	
}

