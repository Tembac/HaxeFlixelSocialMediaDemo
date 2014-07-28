package ;

import flash.net.URLRequest;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxPoint;
import flixel.util.FlxRect;
import openfl.Lib;

/**
 * ...
 * @author Tembac
 */
class ButtonTwitter extends FlxSprite
{
	public var tweetMessage:String = "Demo from @tembachi on how to use twitter with @haxeflixel Tweet to thank! @chimangogames";
	
	private var state:Int = 0;
	
	private var state_on:Int = 0;
	private var state_off:Int = 1;
	
	private var touchArea:FlxRect;
	
	private	var pressed:Bool;

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		
		loadGraphic("assets/images/Twitter_logo_blue_72.png");
		
		touchArea = FlxRect.get(x, y, width, height);
		
		pressed = false;
		
		moves = false;
	}
	
	override public function update():Void
	{
		if (!visible)
		return;
		super.update();
		
		//updates area for mouse
		touchArea.x = x;
		touchArea.y = y;
	
		if (FlxG.mouse.pressed)
		{
			if (!pressed)
			{
				var mousePos:FlxPoint = FlxPoint.get(FlxG.mouse.x, FlxG.mouse.y);
				//si presiona dentro del area del sprite
				if (touchArea.containsFlxPoint(mousePos))
				{
					//para que el pájaro no avance
					Reg.clickedOnSomethingElse = true;
					
					if (state == state_on)
					{
						//pressed
						sendMessage();
					}
					else
					{
					}
					
					pressed = true;
				}
			}
		}
		else
		{
			pressed = false;
		}
		
	}
	
	private function sendMessage():Void
	{
		var textMessage:String = "http://twitter.com/intent/tweet?text=" + tweetMessage;
		Lib.getURL(new URLRequest(textMessage));
	}
	
}