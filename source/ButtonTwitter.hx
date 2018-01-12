package ;

import flash.net.URLRequest;
import flixel.ui.FlxButton;
import openfl.Lib;

/**
 * ...
 * @author Tembac
 */
class ButtonTwitter extends FlxButton
{
	public var tweetMessage:String = "Demo from @tembachi on how to use twitter with @haxeflixel Tweet to thank! @chimangogames";
	
	public function new(X:Float=0, Y:Float=0, ?OnClick:Void->Void) 
	{
		super(X, Y,"", sendMessage);//, sendMessage);
		
		loadGraphic("assets/images/Twitter_logo_blue_72.png");
	}
		
	private function sendMessage():Void
	{
		tweetMessage = StringTools.replace(tweetMessage, " ", "%20");
		
		var textMessage:String = "http://twitter.com/intent/tweet?text=" + tweetMessage;
		Lib.getURL(new URLRequest(textMessage), "_blank");
	}
	
}