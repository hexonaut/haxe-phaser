package pixi;

import haxe.extern.Rest;

@:native("PIXI.Graphics")
extern class Graphics extends DisplayObjectContainer {

	static var POLY:Float;
	
	static var RECT:Float;
	
	static var CIRC:Float;
	
	static var ELIP:Float;
	
	static var RREC:Float;
	
	var blendMode:Float;
	
	var boundsPadding:Float;
	
	var fillAlpha:Float;
	
	var isMask:Bool;
	
	var lineWidth:Float;
	
	var lineColor:Float;
	
	var tint:Float;
	
	@:native("worldAlpha")
	var Graphics_worldAlpha:Float;
	
	function arc(cx:Float, cy:Float, radius:Float, startAngle:Float, endAngle:Float, anticlockwise:Bool):Graphics;
	
	function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Graphics;
	
	function beginFill(?color:Float, ?alpha:Float):Graphics;
	
	function bezierCurveTo(cpX:Float, cpY:Float, cpX2:Float, cpY2:Float, toX:Float, toY:Float):Graphics;
	
	function clear():Graphics;
	
	function destroyCachedSprite():Void;
	
	function drawCircle(x:Float, y:Float, diameter:Float):Graphics;
	
	function drawEllipse(x:Float, y:Float, width:Float, height:Float):Graphics;
	
	function drawPolygon(path:Rest<Dynamic>):Graphics;
	
	function drawRect(x:Float, y:Float, width:Float, height:Float):Graphics;
	
	function drawRoundedRect(x:Float, y:Float, width:Float, height:Float, radius:Float):Graphics;
	
	@:overload(function(shape:Rectangle):GraphicsData{})
	@:overload(function(shape:Ellipse):GraphicsData{})
	@:overload(function(shape:Polygon):GraphicsData{})
	function drawShape(shape:Circle):GraphicsData;
	
	function endFill():Graphics;
	
	@:native("generateTexture")
	function Graphics_generateTexture(?resolution:Float, ?scaleMode:Float, ?padding:Float):RenderTexture;
	
	function lineStyle(?lineWidth:Float, ?color:Float, ?alpha:Float):Graphics;
	
	function lineTo(x:Float, y:Float):Graphics;
	
	function moveTo(x:Float, y:Float):Graphics;
	
	function quadraticCurveTo(cpX:Float, cpY:Float, toX:Float, toY:Float):Graphics;
	
}

