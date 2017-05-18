package phaser;

@:native("Phaser.Bullet")
extern class Bullet extends phaser.Sprite {

	function new(game:phaser.Game, x:Float, y:Float, ?key:Dynamic, ?frame:Dynamic);
	
	@:native("kill")
	function Bullet_kill():phaser.Bullet;
	
	@:native("update")
	function Bullet_update():Void;
	
}

