package phaser.gameobjects.components;

@:native("Phaser.Component.LoadTexture")
extern interface LoadTexture {
	
	/**
	 * Gets or sets the current frame index of the texture being used to render this Game Object.
	 * 
	 * To change the frame set frame to the index of the new frame in the sprite sheet you wish this Game Object to use,
	 * for example: player.frame = 4.
	 * 
	 * If the frame index given doesn't exist it will revert to the first frame found in the texture.
	 * 
	 * If you are using a texture atlas then you should use the frameName property instead.
	 * 
	 * If you wish to fully replace the texture being used see loadTexture.
	 */
	var frame:Int;
	
	/**
	 * Gets or sets the current frame name of the texture being used to render this Game Object.
	 * 
	 * To change the frame set frameName to the name of the new frame in the texture atlas you wish this Game Object to use, 
	 * for example: player.frameName = "idle".
	 * 
	 * If the frame name given doesn't exist it will revert to the first frame found in the texture and throw a console warning.
	 * 
	 * If you are using a sprite sheet then you should use the frame property instead.
	 * 
	 * If you wish to fully replace the texture being used see loadTexture.
	 */
	var frameName:String;
	
}
