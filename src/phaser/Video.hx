package phaser;

import haxe.extern.EitherType;
import js.html.VideoElement as HTMLVideoElement;
import js.html.Blob;

/**
* A Video object that takes a previously loaded Video from the Phaser Cache and handles playback of it.
* 
* Alternatively it takes a getUserMedia feed from an active webcam and streams the contents of that to
* the Video instead (see `startMediaStream` method)
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
* it's worth noting that every single Video needs to be touch unlocked, not just the first one. You can use the `changeSource`
* method to try and work around this limitation, but see the method help for details.
* 
* Small screen devices, especially iPod and iPhone will launch the video in its own native video player,
* outside of the Safari browser. There is no way to avoid this, it's a device imposed limitation.
* 
* Note: On iOS if you need to detect when the user presses the 'Done' button (before the video ends)
* then you need to add your own event listener
*/
@:native("Phaser.Video")
extern class Video {

	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* The key of the Video in the Cache, if stored there. Will be `null` if this Video is using the webcam instead.
	* Default: null
	*/
	var key:String;
	
	/**
	* The HTML Video Element that is added to the document.
	*/
	var video:HTMLVideoElement;
	
	var baseTexture:pixi.BaseTexture;
	
	/**
	* The PIXI.Texture.
	*/
	var texture:pixi.Texture;
	
	/**
	* The Frame this video uses for rendering.
	*/
	var textureFrame:phaser.Frame;
	
	/**
	* The const type of this object.
	*/
	var type:Float;
	
	/**
	* If true this video will never send its image data to the GPU when its dirty flag is true. This only applies in WebGL.
	*/
	var disableTextureUpload:Bool;
	
	var dirty:Bool;
	
	/**
	* The current time of the video in seconds. If set the video will attempt to seek to that point in time.
	*/
	var currentTime:Float;
	
	/**
	* The duration of the video in seconds.
	*/
	var duration:Float;
	
	/**
	* The progress of this video. This is a value between 0 and 1, where 0 is the start and 1 is the end of the video.
	*/
	var progress:Float;
	
	/**
	* Gets or sets the muted state of the Video.
	*/
	var mute:Bool;
	
	/**
	* Gets or sets the paused state of the Video.
	* If the video is still touch locked (such as on iOS devices) this call has no effect.
	*/
	var paused:Bool;
	
	/**
	* Gets or sets the volume of the Video, a value between 0 and 1. The value given is clamped to the range 0 to 1.
	*/
	var volume:Bool;
	
	/**
	* Gets or sets the playback rate of the Video. This is the speed at which the video is playing.
	*/
	var playbackRate:Bool;
	
	/**
	* True if the video is currently playing (and not paused or ended), otherwise false.
	*/
	var playing:Bool;
	
	/**
	* Gets or sets if the Video is set to loop.
	* Please note that at present some browsers (i.e. Chrome) do not support *seamless* video looping.
	* If the video isn't yet set this will always return false.
	*/
	var loop:Bool;
	
	/**
	* The width of the video in pixels.
	*/
	var width:Float;
	
	/**
	* The height of the video in pixels.
	*/
	var height:Float;
	
	/**
	* The Video Stream data. Only set if this Video is streaming from the webcam via `startMediaStream`.
	*/
	var videoStream:Dynamic;
	
	/**
	* Is there a streaming video source? I.e. from a webcam.
	*/
	var isStreaming:Bool;
	
	/**
	* A snapshot grabbed from the video. This is initially black. Populate it by calling Video.grab().
	* When called the BitmapData is updated with a grab taken from the current video playing or active video stream.
	* If Phaser has been compiled without BitmapData support this property will always be `null`.
	*/
	var snapshot:phaser.BitmapData;
	
	/**
	* The amount of ms allowed to elapsed before the Video.onTimeout signal is dispatched while waiting for webcam access.
	* Default: 15000
	*/
	var timeout:Float;
	
	/**
	* When starting playback of a video Phaser will monitor its readyState using a setTimeout call.
	* The setTimeout happens once every `Video.retryInterval` ms. It will carry on monitoring the video
	* state in this manner until the `retryLimit` is reached and then abort.
	* Default: 20
	*/
	var retryLimit:Float;
	
	/**
	* The current retry attempt.
	*/
	var retry:Float;
	
	/**
	* The number of ms between each retry at monitoring the status of a downloading video.
	* Default: 500
	*/
	var retryInterval:Float;
	
	/**
	* This signal is dispatched if the user allows access to their webcam.
	*/
	var onAccess:phaser.Signal;
	
	/**
	* This signal is dispatched if an error occurs either getting permission to use the webcam (for a Video Stream) or when trying to play back a video file.
	*/
	var onError:phaser.Signal;
	
	/**
	* This signal is dispatched when the Video starts to play. It sends 3 parameters: a reference to the Video object, if the video is set to loop or not and the playback rate.
	*/
	var onPlay:phaser.Signal;
	
	/**
	* This signal is dispatched when the Video completes playback, i.e. enters an 'ended' state. On iOS specifically it also fires if the user hits the 'Done' button at any point during playback. Videos set to loop will never dispatch this signal.
	*/
	var onComplete:phaser.Signal;
	
	var onUpdate:phaser.Signal;
	
	/**
	* This signal is dispatched if when asking for permission to use the webcam no response is given within a the Video.timeout limit.
	* This may be because the user has picked `Not now` in the permissions window, or there is a delay in establishing the LocalMediaStream.
	*/
	var onTimeout:phaser.Signal;
	
	/**
	* true if this video is currently locked awaiting a touch event. This happens on some mobile devices, such as iOS.
	*/
	var touchLocked:Bool;
	
	var complete:Void->Void;
	
	/**
	* A Video object that takes a previously loaded Video from the Phaser Cache and handles playback of it.
	* 
	* Alternatively it takes a getUserMedia feed from an active webcam and streams the contents of that to
	* the Video instead (see `startMediaStream` method)
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
	* it's worth noting that every single Video needs to be touch unlocked, not just the first one. You can use the `changeSource`
	* method to try and work around this limitation, but see the method help for details.
	* 
	* Small screen devices, especially iPod and iPhone will launch the video in its own native video player,
	* outside of the Safari browser. There is no way to avoid this, it's a device imposed limitation.
	* 
	* Note: On iOS if you need to detect when the user presses the 'Done' button (before the video ends)
	* then you need to add your own event listener
	* 
	* @param game A reference to the currently running game.
	* @param key The key of the video file in the Phaser.Cache that this Video object will play. Set to `null` or leave undefined if you wish to use a webcam as the source. See `startMediaStream` to start webcam capture.
	* @param url If the video hasn't been loaded then you can provide a full URL to the file here (make sure to set key to null)
	*/
	function new(game:phaser.Game, ?key:String, ?url:String);
	
	/**
	* Updates the given Display Objects so they use this Video as their texture.
	* This will replace any texture they will currently have set.
	* 
	* @param object Either a single Sprite/Image or an Array of Sprites/Images.
	* @return This Video object for method chaining.
	*/
	function add(object:EitherType<phaser.Sprite, EitherType<Array<phaser.Sprite>, EitherType<phaser.Image, Array<phaser.Image>>>>):phaser.Video;
	
	/**
	* Creates a new Phaser.Image object, assigns this Video to be its texture, adds it to the world then returns it.
	* 
	* @param x The x coordinate to place the Image at.
	* @param y The y coordinate to place the Image at.
	* @param anchorX Set the x anchor point of the Image. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @param anchorY Set the y anchor point of the Image. A value between 0 and 1, where 0 is the top-left and 1 is bottom-right.
	* @param scaleX The horizontal scale factor of the Image. A value of 1 means no scaling. 2 would be twice the size, and so on. - Default: 1
	* @param scaleY The vertical scale factor of the Image. A value of 1 means no scaling. 2 would be twice the size, and so on. - Default: 1
	* @return The newly added Image object.
	*/
	function addToWorld(?x:Float, ?y:Float, ?anchorX:Float, ?anchorY:Float, ?scaleX:Float, ?scaleY:Float):phaser.Image;
	
	/**
	* Creates a new Video element from the given Blob. The Blob must contain the video data in the correct encoded format.
	* This method is typically called by the Phaser.Loader and Phaser.Cache for you, but is exposed publicly for convenience.
	* 
	* @param blob The Blob containing the video data.
	* @return This Video object for method chaining.
	*/
	function createVideoFromBlob(blob:Blob):phaser.Video;
	
	/**
	* Instead of playing a video file this method allows you to stream video data from an attached webcam.
	* 
	* As soon as this method is called the user will be prompted by their browser to "Allow" access to the webcam.
	* If they allow it the webcam feed is directed to this Video. Call `Video.play` to start the stream.
	* 
	* If they block the webcam the onError signal will be dispatched containing the NavigatorUserMediaError
	* or MediaStreamError event.
	* 
	* You can optionally set a width and height for the stream. If set the input will be cropped to these dimensions.
	* If not given then as soon as the stream has enough data the video dimensions will be changed to match the webcam device.
	* You can listen for this with the onChangeSource signal.
	* 
	* @param captureAudio Controls if audio should be captured along with video in the video stream.
	* @param width The width is used to create the video stream. If not provided the video width will be set to the width of the webcam input source.
	* @param height The height is used to create the video stream. If not provided the video height will be set to the height of the webcam input source.
	* @return This Video object for method chaining or false if the device doesn't support getUserMedia.
	*/
	function startMediaStream(?captureAudio:Bool, ?width:Float, ?height:Float):phaser.Video;
	
	/**
	* Creates a new Video element from the given URL.
	* 
	* @param url The URL of the video.
	* @param autoplay Automatically start the video?
	* @return This Video object for method chaining.
	*/
	function createVideoFromURL(url:String, ?autoplay:Bool):phaser.Video;
	
	/**
	* On some mobile browsers you cannot play a video until the user has explicitly touched the video to allow it.
	* Phaser handles this via the `setTouchLock` method. However if you have 3 different videos, maybe an "Intro", "Start" and "Game Over"
	* split into three different Video objects, then you will need the user to touch-unlock every single one of them.
	* 
	* You can avoid this by using just one Video object and simply changing the video source. Once a Video element is unlocked it remains
	* unlocked, even if the source changes. So you can use this to your benefit to avoid forcing the user to 'touch' the video yet again.
	* 
	* As you'd expect there are limitations. So far we've found that the videos need to be in the same encoding format and bitrate.
	* This method will automatically handle a change in video dimensions, but if you try swapping to a different bitrate we've found it
	* cannot render the new video on iOS (desktop browsers cope better).
	* 
	* When the video source is changed the video file is requested over the network. Listen for the `onChangeSource` signal to know
	* when the new video has downloaded enough content to be able to be played. Previous settings such as the volume and loop state
	* are adopted automatically by the new video.
	* 
	* @param src The new URL to change the video.src to.
	* @param autoplay Should the video play automatically after the source has been updated? - Default: true
	* @return This Video object for method chaining.
	*/
	function changeSource(src:String, ?autoplay:Bool):phaser.Video;
	
	function connectToMediaStram(video:Dynamic, stream:Dynamic):phaser.Video;
	
	/**
	* Destroys the Video object. This calls `Video.stop` and then `Video.removeVideoElement`.
	* If any Sprites are using this Video as their texture it is up to you to manage those.
	*/
	function destroy():Void;
	
	/**
	* Starts this video playing.
	* 
	* If the video is already playing, or has been queued to play with `changeSource` then this method just returns.
	* 
	* @param loop Should the video loop automatically when it reaches the end? Please note that at present some browsers (i.e. Chrome) do not support *seamless* video looping.
	* @param playbackRate The playback rate of the video. 1 is normal speed, 2 is x2 speed, and so on. You cannot set a negative playback rate. - Default: 1
	* @return This Video object for method chaining.
	*/
	function play(?loop:Bool, ?playbackRate:Float):phaser.Video;
	
	/**
	* Called when the video starts to play. Updates the texture.
	*/
	function playHandler():Void;
	
	/**
	* If the game is running in WebGL this will push the texture up to the GPU if it's dirty.
	* This is called automatically if the Video is being used by a Sprite, otherwise you need to remember to call it in your render function.
	* If you wish to suppress this functionality set Video.disableTextureUpload to `true`.
	*/
	function render():Void;
	
	/**
	* Removes the Video element from the DOM by calling parentNode.removeChild on itself.
	* Also removes the autoplay and src attributes and nulls the reference.
	*/
	function removeVideoElement():Void;
	
	function resizeFrame(parent:Dynamic, width:Float, height:Float):Void;
	
	/**
	* Sets the Input Manager touch callback to be Video.unlock.
	* Required for mobile video unlocking. Mostly just used internally.
	*/
	function setTouchLock():Void;
	
	/**
	* Grabs the current frame from the Video or Video Stream and renders it to the Video.snapshot BitmapData.
	* 
	* You can optionally set if the BitmapData should be cleared or not, the alpha and the blend mode of the draw.
	* 
	* If you need more advanced control over the grabbing them call `Video.snapshot.copy` directly with the same parameters as BitmapData.copy.
	* 
	* @param clear Should the BitmapData be cleared before the Video is grabbed? Unless you are using alpha or a blend mode you can usually leave this set to false.
	* @param alpha The alpha that will be set on the video before drawing. A value between 0 (fully transparent) and 1, opaque. - Default: 1
	* @param blendMode The composite blend mode that will be used when drawing. The default is no blend mode at all. This is a Canvas globalCompositeOperation value such as 'lighter' or 'xor'.
	* @return A reference to the Video.snapshot BitmapData object for further method chaining.
	*/
	function grab(?clear:Bool, ?alpha:Float, ?blendMode:String):phaser.BitmapData;
	
	/**
	* Stops the video playing.
	* 
	* This removes all locally set signals.
	* 
	* If you only wish to pause playback of the video, to resume at a later time, use `Video.paused = true` instead.
	* If the video hasn't finished downloading calling `Video.stop` will not abort the download. To do that you need to
	* call `Video.destroy` instead.
	* 
	* If you are using a video stream from a webcam then calling Stop will disconnect the MediaStream session and disable the webcam.
	* 
	* @return This Video object for method chaining.
	*/
	function stop():Void;
	
	/**
	* Enables the video on mobile devices, usually after the first touch.
	* If the SoundManager hasn't been unlocked then this will automatically unlock that as well.
	* Only one video can be pending unlock at any one time.
	*/
	function unlock():Bool;
	
	/**
	* Called automatically if the video source changes and updates the internal texture dimensions.
	* Then dispatches the onChangeSource signal.
	* 
	* @param event The event which triggered the texture update.
	* @param width The new width of the video. If undefined `video.videoWidth` is used.
	* @param height The new height of the video. If undefined `video.videoHeight` is used.
	*/
	function updateTexture(?event:Dynamic, ?width:Float, ?height:Float):Void;
	
}

