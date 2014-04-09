package phaser.gameobjects;

@:native("Phaser.Button")
extern class Button extends phaser.gameobjects.Image {
	var _onOverFrameName:String;
	var _onOutFrameName:String;
	var _onDownFrameName:String;
	var _onUpFrameName:String;
	var _onOverFrameID:Float;
	var _onOutFrameID:Float;
	var _onDownFrameID:Float;
	var _onUpFrameID:Float;
	var onOverSound:phaser.sound.Sound;
	var onOutSound:phaser.sound.Sound;
	var onDownSound:phaser.sound.Sound;
	var onUpSound:phaser.sound.Sound;
	var onOverSoundMarker:String;
	var onOutSoundMarker:String;
	var onDownSoundMarker:String;
	var onUpSoundMarker:String;
	var onInputOver:phaser.core.Signal;
	var onInputOut:phaser.core.Signal;
	var onInputDown:phaser.core.Signal;
	var onInputUp:phaser.core.Signal;
	var freezeFrames:Bool;
	var forceOut:Bool;
	function clearFrames ():Void;
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:String):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:Float):Void {})
	@:overload(function (?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float):Void {})
	function setFrames (?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float):Void;
	function setSounds (?overSound:phaser.sound.Sound, ?overMarker:String, ?downSound:phaser.sound.Sound, ?downMarker:String, ?outSound:phaser.sound.Sound, ?outMarker:String, ?upSound:phaser.sound.Sound, ?upMarker:String):Void;
	function setOverSound (sound:phaser.sound.Sound, ?marker:String):Void;
	function setOutSound (sound:phaser.sound.Sound, ?marker:String):Void;
	function setDownSound (sound:phaser.sound.Sound, ?marker:String):Void;
	function setUpSound (sound:phaser.sound.Sound, ?marker:String):Void;
	function onInputOverHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	function onInputOutHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	function onInputDownHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	function onInputUpHandler (sprite:phaser.gameobjects.Button, pointer:phaser.input.Pointer):Void;
	function setState (newState:Float):Void;
}
