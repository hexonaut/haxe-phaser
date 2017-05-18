package pixi;

@:native("PIXI.Animation")
extern class Animation {

	function new(name:String, timelines:Array<ISpineTimeline>, duration:Float);
	
	var name:String;
	
	var timelines:Array<ISpineTimeline>;
	
	var duration:Float;
	
	function apply(skeleton:Skeleton, time:Float, loop:Bool):Void;
	
	function min(skeleton:Skeleton, time:Float, loop:Bool, alpha:Float):Void;
	
}

