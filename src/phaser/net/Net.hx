package phaser.net;

@:native("Phaser.Net")
extern class Net {
	function new (game:phaser.core.Game);
	function getHostName ():String;
	function checkDomainName (domain:String):Bool;
	function updateQueryString (key:String, value:String, redirect:Bool, url:String):String;
	function getQueryString (?parameter:String = ''):String;
	function decodeURI (value:String):String;
}
