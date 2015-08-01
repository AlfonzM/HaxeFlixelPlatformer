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
	var _cameraTarget:FlxSprite;
	var _player:Player;
	var _level:Level;

	override public function create():Void
	{
		super.create();

		// Setup player
		_player = new Player(0,0);
		add(_player);

		// Setup _level
		_level = new Level();
		add(_level.level);

		// Setup camera
		_cameraTarget = new FlxSprite(0,0);
		FlxG.camera.follow(_cameraTarget, FlxCamera.STYLE_LOCKON, 7);
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
		forDebug();
		_cameraTarget.setPosition(_player.x + (FlxG.mouse.x - _player.x)/6, _player.y + (FlxG.mouse.y - _player.y)/6);
		
		super.update();

		FlxG.collide(_player, _level.level);
	}	

	private function forDebug(){
		if(FlxG.keys.justPressed.R){
			trace("Restart level.");
			FlxG.switchState(new PlayState());
		}
	}
}