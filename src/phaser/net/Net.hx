package phaser.net;

@:native("Phaser.Net")
extern class Net {
	
	/**
	 * Phaser.Net handles browser URL related tasks such as checking host names, domain names and query string manipulation.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Returns the hostname given by the browser.
	 */
	function getHostName ():String;
	
	/**
	 * Compares the given domain name against the hostname of the browser containing the game.
	 * If the domain name is found it returns true.
	 * You can specify a part of a domain, for example 'google' would match 'google.com', 'google.co.uk', etc.
	 * Do not include 'http://' at the start.
	 */
	function checkDomainName (domain:String):Bool;
	
	/**
	 * Updates a value on the Query String and returns it in full.
	 * If the value doesn't already exist it is set.
	 * If the value exists it is replaced with the new value given. If you don't provide a new value it is removed from the query string.
	 * Optionally you can redirect to the new url, or just return it as a string.
	 */
	function updateQueryString (key:String, value:String, redirect:Bool, url:String):String;
	
	/**
	 * Returns the Query String as an object.
	 * If you specify a parameter it will return just the value of that parameter, should it exist.
	 */
	function getQueryString (?parameter:String = ''):Dynamic;
	
	/**
	 * Returns the Query String as an object.
	 * If you specify a parameter it will return just the value of that parameter, should it exist.
	 */
	function decodeURI (value:String):String;
	
}
