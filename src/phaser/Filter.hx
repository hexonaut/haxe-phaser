package phaser;

import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
* This is a base Filter class to use for any Phaser filter development.
* If you want to make a custom filter, this should be your base class.
* 
* The default uniforms, types and values for all Filters are:
* 
* ```
* resolution: { type: '2f', value: { x: 256, y: 256 }}
* time: { type: '1f', value: 0 }
* mouse: { type: '2f', value: { x: 0.0, y: 0.0 } }
* date: { type: '4fv', value: [ d.getFullYear(),  d.getMonth(),  d.getDate(), d.getHours() *60 * 60 + d.getMinutes() * 60 + d.getSeconds() ] }
* sampleRate: { type: '1f', value: 44100.0 }
* iChannel0: { type: 'sampler2D', value: null, textureData: { repeat: true } }
* iChannel1: { type: 'sampler2D', value: null, textureData: { repeat: true } }
* iChannel2: { type: 'sampler2D', value: null, textureData: { repeat: true } }
* iChannel3: { type: 'sampler2D', value: null, textureData: { repeat: true } }
* ```
* 
* The vast majority of filters (including all of those that ship with Phaser) use fragment shaders, and
* therefore only work in WebGL and are not supported by Canvas at all.
*/
@:native("Phaser.Filter")
extern class Filter extends pixi.AbstractFilter {

	/**
	* This is a base Filter class to use for any Phaser filter development.
	* If you want to make a custom filter, this should be your base class.
	* 
	* The default uniforms, types and values for all Filters are:
	* 
	* ```
	* resolution: { type: '2f', value: { x: 256, y: 256 }}
	* time: { type: '1f', value: 0 }
	* mouse: { type: '2f', value: { x: 0.0, y: 0.0 } }
	* date: { type: '4fv', value: [ d.getFullYear(),  d.getMonth(),  d.getDate(), d.getHours() *60 * 60 + d.getMinutes() * 60 + d.getSeconds() ] }
	* sampleRate: { type: '1f', value: 44100.0 }
	* iChannel0: { type: 'sampler2D', value: null, textureData: { repeat: true } }
	* iChannel1: { type: 'sampler2D', value: null, textureData: { repeat: true } }
	* iChannel2: { type: 'sampler2D', value: null, textureData: { repeat: true } }
	* iChannel3: { type: 'sampler2D', value: null, textureData: { repeat: true } }
	* ```
	* 
	* The vast majority of filters (including all of those that ship with Phaser) use fragment shaders, and
	* therefore only work in WebGL and are not supported by Canvas at all.
	* 
	* @param game A reference to the currently running game.
	* @param uniforms Uniform mappings object. The uniforms are added on the default uniforms, or replace them if the keys are the same.
	* @param fragmentSrc The fragment shader code. Either an array, one element per line of code, or a string.
	*/
	function new(game:phaser.Game, uniforms:Dynamic, fragmentSrc:EitherType<String, Array<String>>);
	
	/**
	* Internal PIXI var.
	* Default: true
	*/
	@:native("dirty")
	var Filter_dirty:Bool;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* The height (resolution uniform)
	*/
	var height:Float;
	
	/**
	* The fragment shader code.
	*/
	@:native("fragmentSrc")
	var Filter_fragmentSrc:EitherType<String, Array<String>>;
	
	/**
	* Internal PIXI var.
	*/
	@:native("padding")
	var Filter_padding:Float;
	
	/**
	* The previous position of the pointer (we don't update the uniform if the same)
	*/
	var prevPoint:phaser.Point;
	
	/**
	* The const type of this object, either Phaser.WEBGL_FILTER or Phaser.CANVAS_FILTER.
	*/
	var type:Float;
	
	/**
	* Default uniform mappings. Compatible with ShaderToy and GLSLSandbox.
	*/
	@:native("uniforms")
	var Filter_uniforms:Dynamic;
	
	/**
	* The width (resolution uniform)
	*/
	var width:Float;
	
	/**
	* Creates a new Phaser.Image object using a blank texture and assigns
	* this Filter to it. The image is then added to the world.
	* 
	* If you don't provide width and height values then Filter.width and Filter.height are used.
	* 
	* If you do provide width and height values then this filter will be resized to match those
	* values.
	* 
	* @param x The x coordinate to place the Image at.
	* @param y The y coordinate to place the Image at.
	* @param width The width of the Image. If not specified (or null) it will use Filter.width. If specified Filter.width will be set to this value.
	* @param height The height of the Image. If not specified (or null) it will use Filter.height. If specified Filter.height will be set to this value.
	* @param anchorX Set the x anchor point of the Image. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @param anchorY Set the y anchor point of the Image. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @return The newly added Image object.
	*/
	function addToWorld(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?anchorX:Float, ?anchorY:Float):phaser.Image;
	
	/**
	* Clear down this Filter and null out references to game.
	*/
	function destroy():Void;
	
	/**
	* This should be over-ridden. Will receive a variable number of arguments.
	*/
	function init(args:Rest<Dynamic>):Void;
	
	/**
	* Set the resolution uniforms on the filter.
	* 
	* @param width The width of the display.
	* @param height The height of the display.
	*/
	function setResolution(width:Float, height:Float):Void;
	
	/**
	* Syncs the uniforms between the class object and the shaders.
	*/
	@:native("syncUniforms")
	function Filter_syncUniforms():Void;
	
	/**
	* Updates the filter.
	* 
	* @param pointer A Pointer object to use for the filter. The coordinates are mapped to the mouse uniform.
	*/
	function update(?pointer:phaser.Pointer):Void;
	
}

