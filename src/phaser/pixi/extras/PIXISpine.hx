package phaser.pixi.extras;

@:native("PIXI.Spine")
extern class PIXISpine extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * If this flag is set to true, the spine animation will be autoupdated every time
	 * the object id drawn. The down side of this approach is that the delta time is
	 * automatically calculated and you could miss out on cool effects like slow motion,
	 * pause, skip ahead and the sorts. Most of these effects can be achieved even with
	 * autoupdate enabled but are harder to achieve.
	 */
	var autoUpdate:phaser.utils.Utils;
	
}
