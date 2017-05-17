package phaser;

/**
* Phaser.Net handles browser URL related tasks such as checking host names, domain names and query string manipulation.
*/
@:native("Phaser.Net")
extern class Net {

	/**
	* Phaser.Net handles browser URL related tasks such as checking host names, domain names and query string manipulation.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	var game:phaser.Game;
	
	/**
	* Compares the given domain name against the hostname of the browser containing the game.
	* If the domain name is found it returns true.
	* You can specify a part of a domain, for example 'google' would match 'google.com', 'google.co.uk', etc.
	* Do not include 'http://' at the start.
	* 
	* @param domain 
	* @return true if the given domain fragment can be found in the window.location.hostname
	*/
	function checkDomainName(domain:String):Bool;
	
	/**
	* Takes a Uniform Resource Identifier (URI) component (previously created by encodeURIComponent or by a similar routine) and
	* decodes it, replacing \ with spaces in the return. Used internally by the Net classes.
	* 
	* @param value The URI component to be decoded.
	* @return The decoded value.
	*/
	function decodeURI(value:String):String;
	
	/**
	* Returns the hostname given by the browser.
	*/
	function getHostName():String;
	
	/**
	* Returns the Query String as an object.
	* If you specify a parameter it will return just the value of that parameter, should it exist.
	* 
	* @param parameter If specified this will return just the value for that key. - Default: ''
	* @return An object containing the key value pairs found in the query string or just the value if a parameter was given.
	*/
	function getQueryString(?parameter:String):String;
	
	/**
	* Updates a value on the Query String and returns it in full.
	* If the value doesn't already exist it is set.
	* If the value exists it is replaced with the new value given. If you don't provide a new value it is removed from the query string.
	* Optionally you can redirect to the new url, or just return it as a string.
	* 
	* @param key The querystring key to update.
	* @param value The new value to be set. If it already exists it will be replaced.
	* @param redirect If true the browser will issue a redirect to the url with the new querystring.
	* @param url The URL to modify. If none is given it uses window.location.href.
	* @return If redirect is false then the modified url and query string is returned.
	*/
	function updateQueryString(key:String, value:Dynamic, ?redirect:Bool, ?url:String):String;
	
}

