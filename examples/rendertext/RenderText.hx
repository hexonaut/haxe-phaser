package ;

import js.Lib;
import phaser.Game;
import phaser.Phaser;
import phaser.PhaserTextStyle;

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
		var style:PhaserTextStyle = cast { font: "65px Arial", fill: "#ff0044", align: "center", boundsAlignH: "left", boundsAlignV: "top" };

		var t = game.add.text(game.world.centerX - 300, 0, text, style);
	}
	
	static function main ():Void {
		new RenderText();
	}
	
}