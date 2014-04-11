package ;

import js.Lib;
import phaser.core.Game;
import phaser.Phaser;

/**
 * Displays text on the screen.
 * 
 * @author Sam MacPherson
 */

class RenderText {
	
	var game:Game;
	
	public function new () {
		game = new Game(800, 600, Phaser.CANVAS, 'phaser-example', { create: create });
	}
	
	function create ():Void {
		var text = "Haxe + Phaser\nAwesome!";
		var style = { font: "65px Arial", fill: "#ff0044", align: "center" };

		var t = game.add.text(game.world.centerX - 300, 0, text, style);
	}
	
	static function main ():Void {
		new RenderText();
	}
	
}