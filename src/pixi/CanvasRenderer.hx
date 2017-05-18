package pixi;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;

/**
* The CanvasRenderer draws the Stage and all its content onto a 2d canvas. This renderer should be used for browsers that do not support webGL.
* Don't forget to add the CanvasRenderer.view to your DOM or you will not see anything :)
*/
@:native("PIXI.CanvasRenderer")
extern class CanvasRenderer implements PixiRenderer {

	/**
	* The CanvasRenderer draws the Stage and all its content onto a 2d canvas. This renderer should be used for browsers that do not support webGL.
	* Don't forget to add the CanvasRenderer.view to your DOM or you will not see anything :)
	* 
	* @param game A reference to the Phaser Game instance
	*/
	function new(game:phaser.Game);
	
	var game:phaser.Game;
	
	/**
	* The renderer type.
	*/
	var type:Float;
	
	/**
	* The resolution of the canvas.
	*/
	var resolution:Float;
	
	/**
	* This sets if the CanvasRenderer will clear the canvas or not before the new render pass.
	* If the Stage is NOT transparent Pixi will use a canvas sized fillRect operation every frame to set the canvas background color.
	* If the Stage is transparent Pixi will use clearRect to clear the canvas every frame.
	* Disable this by setting this to false. For example if your game has a canvas filling background image you often don't need this set.
	*/
	var clearBeforeRender:Bool;
	
	/**
	* Whether the render view is transparent
	*/
	var transparent:Bool;
	
	/**
	* Whether the render view should be resized automatically
	*/
	var autoResize:Bool;
	
	/**
	* The width of the canvas view
	* Default: 800
	*/
	var width:Float;
	
	/**
	* The height of the canvas view
	* Default: 600
	*/
	var height:Float;
	
	/**
	* The canvas element that everything is drawn to.
	*/
	var view:HTMLCanvasElement;
	
	/**
	* The canvas 2d context that everything is drawn with
	*/
	var context:CanvasRenderingContext2D;
	
	/**
	* Boolean flag controlling canvas refresh.
	*/
	var refresh:Bool;
	
	/**
	* Internal var.
	*/
	var count:Float;
	
	var maskManager:CanvasMaskManager;
	
	/**
	* The render session is just a bunch of parameter used for rendering
	*/
	var renderSession:RenderSession;
	
	/**
	* Renders the DisplayObjectContainer, usually the Phaser.Stage, to this canvas view.
	* 
	* @param root The root element to be rendered.
	*/
	function render(stage:DisplayObjectContainer):Void;
	
	/**
	* Resizes the canvas view to the specified width and height
	* 
	* @param width the new width of the canvas view
	* @param height the new height of the canvas view
	*/
	function resize(width:Float, height:Float):Void;
	
	/**
	* Removes everything from the renderer and optionally removes the Canvas DOM element.
	* 
	* @param removeView Removes the Canvas element from the DOM. - Default: true
	*/
	@:overload(function(?removeView:Bool):Void{})
	function destroy():Void;
	
}

