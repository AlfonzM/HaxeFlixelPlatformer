package;

import flixel.tile.FlxTilemap;
import openfl.Assets;
import flixel.FlxObject;


class Level {
	public var level:FlxTilemap;

	public function new(){
		level = new FlxTilemap();
		level.loadMap(Assets.getText("assets/map.csv"), "assets/images/tiles.png", Reg.T_WIDTH, Reg.T_HEIGHT);

		// Set tile #2 to collision = NONE
		// level.setTileProperties(2,FlxObject.NONE, null, null, null);
	}
}