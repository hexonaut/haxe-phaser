package phaser.physics.p2;

@:native("Phaser.Physics.P2.ContactMaterial")
extern class ContactMaterial {
	
	/**
	 * Defines a physics material
	 */
	function new (materialA:phaser.physics.p2.Material, materialB:phaser.physics.p2.Material, ?options:Dynamic);
	
}
