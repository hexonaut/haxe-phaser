package phaser.utils;

@:native("Phaser.Color")
extern class Color {
	static function getColor32 (alpha:Float, red:Float, green:Float, blue:Float):Float;
	static function getColor (red:Float, green:Float, blue:Float):Float;
	static function hexToRGB (h:String):Float;
	static function getColorInfo (color:Float):String;
	static function RGBtoHexstring (color:Float):String;
	static function RGBtoWebstring (color:Float):String;
	static function colorToHexstring (color:Float):String;
	static function interpolateColor (color1:Float, color2:Float, steps:Float, currentStep:Float, alpha:Float):Float;
	static function interpolateColorWithRGB (color:Float, r:Float, g:Float, b:Float, steps:Float, currentStep:Float):Float;
	static function interpolateRGB (r1:Float, g1:Float, b1:Float, r2:Float, g2:Float, b2:Float, steps:Float, currentStep:Float):Float;
	static function getRandomColor (min:Float, max:Float, alpha:Float):Float;
	static function getRGB (color:Float):Dynamic;
	static function getWebRGB (color:Float):String;
	static function getAlpha (color:Float):Float;
	static function getAlphaFloat (color:Float):Float;
	static function getRed (color:Float):Float;
	static function getGreen (color:Float):Float;
	static function getBlue (color:Float):Float;
}
