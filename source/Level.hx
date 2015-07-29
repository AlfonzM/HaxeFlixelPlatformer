package;

import flixel.tile.FlxTilemap;
import openfl.Assets;

class Level {
	public var level:FlxTilemap;

	public function new(){
		level = new FlxTilemap();
		level.loadMap(Assets.getText("assets/map.txt"), "assets/images/tiles.png", Reg.T_WIDTH, Reg.T_HEIGHT);
	}
}