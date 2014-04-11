(function () { "use strict";
var RenderText = function() {
	this.game = new Phaser.Game(800,600,Phaser.CANVAS,"phaser-example",{ create : $bind(this,this.create)});
};
RenderText.main = function() {
	new RenderText();
};
RenderText.prototype = {
	create: function() {
		var text = "Haxe + Phaser\nAwesome!";
		var style = { font : "65px Arial", fill : "#ff0044", align : "center"};
		var t = this.game.add.text(this.game.world.centerX - 300,0,text,style);
	}
};
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
RenderText.main();
})();
