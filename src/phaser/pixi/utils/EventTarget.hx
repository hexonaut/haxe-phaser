package phaser.pixi.utils;

@:native("PIXI.EventTarget")
extern class EventTarget {
	var listeneners:Dynamic;
	var addEventListener:Dynamic;
	var dispatchEvent:Dynamic;
	var removeEventListener:Dynamic;
}
