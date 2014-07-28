package ;

import flash.net.URLRequest;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.ui.FlxButton;
import flixel.util.FlxPoint;
import flixel.util.FlxRect;
import openfl.Lib;

/**
 * ...
 * @author Tembac
 */
class ButtonTwitter extends FlxButton
{
	public var tweetMessage:String = "Demo from @tembachi on how to use twitter with @haxeflixel Tweet to thank! @chimangogames";
	
	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y, sendMessage);
		
		loadGraphic("assets/images/Twitter_logo_blue_72.png");
	}
		
	private function sendMessage():Void
	{
		var textMessage:String = "http://twitter.com/intent/tweet?text=" + tweetMessage;
		Lib.getURL(new URLRequest(textMessage));
	}
	
}