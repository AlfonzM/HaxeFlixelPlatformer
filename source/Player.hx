package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
	private gravity:Int = 

    public function new(X:Float, Y:Float)
    {
        super(X,Y);
        makeGraphic(Reg.T_WIDTH, Reg.T_HEIGHT, FlxColor.WHITE);


    }

    override public function update():Void
    {
        super.update();
    }

    override public function destroy():Void
    {
        super.destroy();
    }
}