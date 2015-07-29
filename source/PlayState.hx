package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.FlxCamera;
/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	var _player:Player;
	var level:Level;

	override public function create():Void
	{
		super.create();

		// Setup layer
		_player = new Player(0,0);
		add(_player);

		// Setup level
		level = new Level();
		add(level.level);

		// Setup camera
		FlxG.camera.follow(_player, FlxCamera.STYLE_LOCKON, 10);
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		FlxG.collide(_player, level.level);
		forDebug();
		super.update();
	}	

	private function forDebug(){
		if(FlxG.keys.justPressed.R){
			trace("Restart level.");
			FlxG.switchState(new PlayState());
		}
	}
}