package ;

import flash.net.URLRequest;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.ui.FlxButton;
import flixel.ui.FlxTypedButton;
import flixel.util.FlxPoint;
import flixel.util.FlxRect;
import openfl.Lib;

/**
 * ...
 * @author Tembac
 */
class ButtonTwitter extends FlxButton
{
	public var tweetMessage:String = "Demo%20from%20@tembachi%20on%20how%20to%20use%20twitter%20with%20@haxeflixel%20Tweet%20to%20thank!%20@chimangogames";
	
	public function new(X:Float=0, Y:Float=0, ?OnClick:Void->Void) 
	{
		super(X, Y,"", sendMessage);//, sendMessage);
		
		loadGraphic("assets/images/Twitter_logo_blue_72.png");
	}
		
	private function sendMessage():Void
	{
		var textMessage:String = "http://twitter.com/intent/tweet?text=" + tweetMessage;
		Lib.getURL(new URLRequest(textMessage), "_blank");
	}
	
}