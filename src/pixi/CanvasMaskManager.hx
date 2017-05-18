package pixi;

/**
* A set of functions used to handle masking.
*/
@:native("PIXI.CanvasMaskManager")
extern class CanvasMaskManager {

	/**
	* This method adds it to the current stack of masks.
	* 
	* @param maskData the maskData that will be pushed
	* @param renderSession The renderSession whose context will be used for this mask manager.
	*/
	function pushMask(maskData:MaskData, renderSession:RenderSession):Void;
	
	/**
	* Restores the current drawing context to the state it was before the mask was applied.
	* 
	* @param renderSession The renderSession whose context will be used for this mask manager.
	*/
	function popMask(renderSession:RenderSession):Void;
	
}

