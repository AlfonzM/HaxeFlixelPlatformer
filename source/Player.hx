package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
	// ------ Change these values ------
    private var maxSpeedX:Int = 150;
	private var maxSpeedY:Int = 400;

    // Multiplied to maxSpeedY, used as upward jump force
    private var jumpForceMultiplier:Float = 0.7;

    // Multiplied to maxSpeedY and set as downwards gravity
    private var gravityMultiplier:Float = 2.5;

    // Multiplied to maxSpeedX and set as drag.x
    private var xDragMultiplier:Float = 2;

    // ------ Dont change these! ------
    private var xAcceleration:Float;
    private var jumpForce:Float;

    public function new(X:Float, Y:Float)
    {
        super(X,Y);
        makeGraphic(Reg.T_WIDTH, Reg.T_HEIGHT, FlxColor.WHITE);
        maxVelocity.set(maxSpeedX,maxSpeedY);
        xAcceleration = maxSpeedX * 10;
        drag.x = xAcceleration * xDragMultiplier;

        acceleration.y = maxVelocity.y * gravityMultiplier;
        jumpForce = maxVelocity.y * jumpForceMultiplier;
    }

    override public function update():Void
    {
        playerControls();
        super.update();
    }

    override public function destroy():Void
    {
        super.destroy();
    }

    private function playerControls():Void{
		acceleration.x = 0;
    	
    	if(FlxG.keys.pressed.A){
    		acceleration.x= -xAcceleration;
    	} else if(FlxG.keys.pressed.D){
    		acceleration.x = xAcceleration;
    	}

        if(FlxG.keys.justPressed.W){
            velocity.y = -jumpForce;
        }

    }
}