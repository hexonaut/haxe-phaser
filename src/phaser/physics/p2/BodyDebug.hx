package phaser.physics.p2;

@:native("Phaser.Physics.P2.BodyDebug")
extern class BodyDebug extends phaser.core.Group {
	var ppu:Float;
	var body:phaser.physics.p2.Body;
	var canvas:phaser.gameobjects.Graphics;
	function updateSpriteTransform ():Void;
	function draw ():Void;
	function drawCircle ():Void;
	function drawConvex ():Void;
	function drawPath ():Void;
	function drawPlane ():Void;
	function randomPastelHex ():Void;
	function rgbToHex ():Void;
	function componentToHex ():Void;
}
