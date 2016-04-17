package phaser.gameobjects;

@:native("Phaser.Video")
extern class Video {
	
	/**
	 * A Video object that takes a previously loaded Video from the Phaser Cache and handles playback of it.
	 * 
	 * Alternatively it takes a getUserMedia feed from an active webcam and streams the contents of that to
	 * the Video instead (see startMediaStream method)
	 * 
	 * The video can then be applied to a Sprite as a texture. If multiple Sprites share the same Video texture and playback
	 * changes (i.e. you pause the video, or seek to a new time) then this change will be seen across all Sprites simultaneously.
	 * 
	 * Due to a bug in IE11 you cannot play a video texture to a Sprite in WebGL. For IE11 force Canvas mode.
	 * 
	 * If you need each Sprite to be able to play a video fully independently then you will need one Video object per Sprite.
	 * Please understand the obvious performance implications of doing this, and the memory required to hold videos in RAM.
	 * 
	 * On some mobile browsers such as iOS Safari, you cannot play a video until the user has explicitly touched the screen.
	 * This works in the same way as audio unlocking. Phaser will handle the touch unlocking for you, however unlike with audio
	 * it's worth noting that every single Video needs to be touch unlocked, not just the first one. You can use the changeSource
	 * method to try and work around this limitation, but see the method help for details.
	 * 
	 * Small screen devices, especially iPod and iPhone will launch the video in its own native video player, 
	 * outside of the Safari browser. There is no way to avoid this, it's a device imposed limitation.
	 */
	@:overload(function (game:phaser.core.Game, ?key:String, ?url:String):Void {})
	@:overload(function (game:phaser.core.Game, ?key:Dynamic, ?url:String):Void {})
	@:overload(function (game:phaser.core.Game, ?key:String, ?url:Dynamic):Void {})
	function new (game:phaser.core.Game, ?key:Dynamic, ?url:Dynamic);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The key of the Video in the Cache, if stored there. Will be null if this Video is using the webcam instead.
	 */
	var key:String;
	
	/**
	 * The width of the video in pixels.
	 */
	var width:Float;
	
	/**
	 * The height of the video in pixels.
	 */
	var height:Float;
	
	/**
	 * The const type of this object.
	 */
	var type:Float;
	
	/**
	 * If true this video will never send its image data to the GPU when its dirty flag is true. This only applies in WebGL.
	 */
	var disableTextureUpload:Bool;
	
	/**
	 * true if this video is currently locked awaiting a touch event. This happens on some mobile devices, such as iOS.
	 */
	var touchLocked:Bool;
	
	/**
	 * This signal is dispatched when the Video starts to play. It sends 3 parameters: a reference to the Video object, if the video is set to loop or not and the playback rate.
	 */
	var onPlay:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the Video source is changed. It sends 3 parameters: a reference to the Video object and the new width and height of the new video source.
	 */
	var onChangeSource:phaser.core.Signal;
	
	/**
	 * This signal is dispatched when the Video completes playback, i.e. enters an 'ended' state. Videos set to loop will never dispatch this signal.
	 */
	var onComplete:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if the user allows access to their webcam.
	 */
	var onAccess:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if an error occurs either getting permission to use the webcam (for a Video Stream) or when trying to play back a video file.
	 */
	var onError:phaser.core.Signal;
	
	/**
	 * This signal is dispatched if when asking for permission to use the webcam no response is given within a the Video.timeout limit.
	 * This may be because the user has picked Not now in the permissions window, or there is a delay in establishing the LocalMediaStream.
	 */
	var onTimeout:phaser.core.Signal;
	
	/**
	 * The amount of ms allowed to elapsed before the Video.onTimeout signal is dispatched while waiting for webcam access.
	 */
	var timeout:Int;
	
	/**
	 * setTimeout ID.
	 */
	var _timeOutID:Int;
	
	/**
	 * The HTML Video Element that is added to the document.
	 */
	var video:Dynamic;
	
	/**
	 * The Video Stream data. Only set if this Video is streaming from the webcam via startMediaStream.
	 */
	var videoStream:Dynamic;
	
	/**
	 * Is there a streaming video source? I.e. from a webcam.
	 */
	var isStreaming:Bool;
	
	/**
	 * When starting playback of a video Phaser will monitor its readyState using a setTimeout call.
	 * The setTimeout happens once every Video.retryInterval ms. It will carry on monitoring the video
	 * state in this manner until the retryLimit is reached and then abort.
	 */
	var retryLimit:Int;
	
	/**
	 * The current retry attempt.
	 */
	var retry:Int;
	
	/**
	 * The number of ms between each retry at monitoring the status of a downloading video.
	 */
	var retryInterval:Int;
	
	/**
	 * The callback ID of the retry setTimeout.
	 */
	var _retryID:Int;
	
	/**
	 * Internal mute tracking var.
	 */
	var _codeMuted:Bool;
	
	/**
	 * Internal mute tracking var.
	 */
	var _muted:Bool;
	
	/**
	 * Internal paused tracking var.
	 */
	var _codePaused:Bool;
	
	/**
	 * Internal paused tracking var.
	 */
	var _paused:Bool;
	
	/**
	 * Internal var tracking play pending.
	 */
	var _pending:Bool;
	
	/**
	 * Internal var tracking autoplay when changing source.
	 */
	var _autoplay:Bool;
	
	/**
	 * The addEventListener ended function.
	 */
	var _endCallback:Dynamic;
	
	/**
	 * The addEventListener playing function.
	 */
	var _playCallback:Dynamic;
	
	/**
	 * The PIXI.Texture.
	 */
	var texture:phaser.pixi.textures.Texture;
	
	/**
	 * The Frame this video uses for rendering.
	 */
	var textureFrame:phaser.animation.Frame;
	
	/**
	 * A snapshot grabbed from the video. This is initially black. Populate it by calling Video.grab().
	 * When called the BitmapData is updated with a grab taken from the current video playing or active video stream.
	 * If Phaser has been compiled without BitmapData support this property will always be null.
	 */
	var snapshot:phaser.gameobjects.BitmapData;
	
	/**
	 * Connects to an external media stream for the webcam, rather than using a local one.
	 */
	function connectToMediaStream (video:Dynamic, stream:Dynamic):phaser.gameobjects.Video;
	
	/**
	 * Instead of playing a video file this method allows you to stream video data from an attached webcam.
	 * 
	 * As soon as this method is called the user will be prompted by their browser to "Allow" access to the webcam.
	 * If they allow it the webcam feed is directed to this Video. Call Video.play to start the stream.
	 * 
	 * If they block the webcam the onError signal will be dispatched containing the NavigatorUserMediaError
	 * or MediaStreamError event.
	 * 
	 * You can optionally set a width and height for the stream. If set the input will be cropped to these dimensions.
	 * If not given then as soon as the stream has enough data the video dimensions will be changed to match the webcam device.
	 * You can listen for this with the onChangeSource signal.
	 */
	function startMediaStream (?captureAudio:Bool = false, ?width:Int, ?height:Int):phaser.gameobjects.Video;
	
	/**
	 * Creates a new Video element from the given Blob. The Blob must contain the video data in the correct encoded format.
	 * This method is typically called by the Phaser.Loader and Phaser.Cache for you, but is exposed publicly for convenience.
	 */
	function createVideoFromBlob (blob:Dynamic):phaser.gameobjects.Video;
	
	/**
	 * Creates a new Video element from the given URL.
	 */
	function createVideoFromURL (url:String, ?autoplay:Bool = false):phaser.gameobjects.Video;
	
	/**
	 * Called automatically if the video source changes and updates the internal texture dimensions.
	 * Then dispatches the onChangeSource signal.
	 */
	function updateTexture (?event:Dynamic, ?width:Int, ?height:Int):Void;
	
	/**
	 * Called when the video completes playback (reaches and ended state).
	 * Dispatches the Video.onComplete signal.
	 */
	function complete ():Void;
	
	/**
	 * Starts this video playing if it's not already doing so.
	 */
	function play (?loop:Bool = false, ?playbackRate:Float = 1):phaser.gameobjects.Video;
	
	/**
	 * Called when the video starts to play. Updates the texture.
	 */
	function playHandler ():Void;
	
	/**
	 * Stops the video playing.
	 * 
	 * This removes all locally set signals.
	 * 
	 * If you only wish to pause playback of the video, to resume at a later time, use Video.paused = true instead.
	 * If the video hasn't finished downloading calling Video.stop will not abort the download. To do that you need to 
	 * call Video.destroy instead.
	 * 
	 * If you are using a video stream from a webcam then calling Stop will disconnect the MediaStream session and disable the webcam.
	 */
	function stop ():phaser.gameobjects.Video;
	
	/**
	 * Updates the given Display Objects so they use this Video as their texture.
	 * This will replace any texture they will currently have set.
	 */
	@:overload(function (object:phaser.gameobjects.Sprite):phaser.gameobjects.Video {})
	@:overload(function (object:Dynamic):phaser.gameobjects.Video {})
	@:overload(function (object:phaser.gameobjects.Image):phaser.gameobjects.Video {})
	function add (object:Dynamic):phaser.gameobjects.Video;
	
	/**
	 * Creates a new Phaser.Image object, assigns this Video to be its texture, adds it to the world then returns it.
	 */
	function addToWorld (?x:Float = 0, ?y:Float = 0, ?anchorX:Float = 0, ?anchorY:Float = 0, ?scaleX:Float = 1, ?scaleY:Float = 1):phaser.gameobjects.Image;
	
	/**
	 * If the game is running in WebGL this will push the texture up to the GPU if it's dirty.
	 * This is called automatically if the Video is being used by a Sprite, otherwise you need to remember to call it in your render function.
	 * If you wish to suppress this functionality set Video.disableTextureUpload to true.
	 */
	function render ():Void;
	
	/**
	 * Internal handler called automatically by the Video.mute setter.
	 */
	function setMute ():Void;
	
	/**
	 * Internal handler called automatically by the Video.mute setter.
	 */
	function unsetMute ():Void;
	
	/**
	 * Internal handler called automatically by the Video.paused setter.
	 */
	function setPause ():Void;
	
	/**
	 * Internal handler called automatically by the Video.paused setter.
	 */
	function setResume ():Void;
	
	/**
	 * On some mobile browsers you cannot play a video until the user has explicitly touched the video to allow it.
	 * Phaser handles this via the setTouchLock method. However if you have 3 different videos, maybe an "Intro", "Start" and "Game Over"
	 * split into three different Video objects, then you will need the user to touch-unlock every single one of them.
	 * 
	 * You can avoid this by using just one Video object and simply changing the video source. Once a Video element is unlocked it remains
	 * unlocked, even if the source changes. So you can use this to your benefit to avoid forcing the user to 'touch' the video yet again.
	 * 
	 * As you'd expect there are limitations. So far we've found that the videos need to be in the same encoding format and bitrate.
	 * This method will automatically handle a change in video dimensions, but if you try swapping to a different bitrate we've found it
	 * cannot render the new video on iOS (desktop browsers cope better).
	 * 
	 * When the video source is changed the video file is requested over the network. Listen for the onChangeSource signal to know
	 * when the new video has downloaded enough content to be able to be played. Previous settings such as the volume and loop state
	 * are adopted automatically by the new video.
	 */
	function changeSource (src:String, ?autoplay:Bool = true):phaser.gameobjects.Video;
	
	/**
	 * Internal callback that monitors the download progress of a video after changing its source.
	 */
	function checkVideoProgress ():Void;
	
	/**
	 * Sets the Input Manager touch callback to be Video.unlock.
	 * Required for mobile video unlocking. Mostly just used internally.
	 */
	function setTouchLock ():Void;
	
	/**
	 * Enables the video on mobile devices, usually after the first touch.
	 * If the SoundManager hasn't been unlocked then this will automatically unlock that as well.
	 * Only one video can be pending unlock at any one time.
	 */
	function unlock ():Void;
	
	/**
	 * Grabs the current frame from the Video or Video Stream and renders it to the Video.snapshot BitmapData.
	 * 
	 * You can optionally set if the BitmapData should be cleared or not, the alpha and the blend mode of the draw.
	 * 
	 * If you need more advanced control over the grabbing them call Video.snapshot.copy directly with the same parameters as BitmapData.copy.
	 */
	function grab (?clear:Bool = false, ?alpha:Float = 1, ?blendMode:String):phaser.gameobjects.BitmapData;
	
	/**
	 * Removes the Video element from the DOM by calling parentNode.removeChild on itself.
	 * Also removes the autoplay and src attributes and nulls the reference.
	 */
	function removeVideoElement ():Void;
	
	/**
	 * Destroys the Video object. This calls Video.stop and then Video.removeVideoElement.
	 * If any Sprites are using this Video as their texture it is up to you to manage those.
	 */
	function destroy ():Void;
	
	/**
	 * @name Phaser.Video#currentTime
	 */
	var currentTime:Float;
	
	/**
	 * @name Phaser.Video#duration
	 */
	var duration:Float;
	
	/**
	 * @name Phaser.Video#progress
	 */
	var progress:Float;
	
	/**
	 * @name Phaser.Video#mute
	 */
	var mute:Bool;
	
	/**
	 * Gets or sets the paused state of the Video.
	 * If the video is still touch locked (such as on iOS devices) this call has no effect.
	 */
	var paused:Bool;
	
	/**
	 * @name Phaser.Video#volume
	 */
	var volume:Float;
	
	/**
	 * @name Phaser.Video#playbackRate
	 */
	var playbackRate:Float;
	
	/**
	 * Gets or sets if the Video is set to loop.
	 * Please note that at present some browsers (i.e. Chrome) do not support <em>seamless</em> video looping.
	 * If the video isn't yet set this will always return false.
	 */
	var loop:Bool;
	
	/**
	 * @name Phaser.Video#playing
	 */
	var playing:Bool;
	
}
