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
class ButtonFacebook extends FlxButton
{
	public var appID:String = "508343469312204"; // you get this number from making an app on facebook. Very easy to do. This number ifs for my app PEWMA
	public var messageTitle:String = "I%20got%20a%20Score%20of%201000%20on%20the%20game%20PEWMA!%20Can%20you%20beat%20me?";
	public var messageCaption:String = "PEWMA%20mobile%20game";
	public var shareLink:String = "http://chimangogames.com/";
	public var messageDescription:String = "PEWMA%20is%20a%20game%20for%20ios%20and%20Android%20devices!%20Adictive,%20fun%20and%20inspired%20on%20ancient%20south%20American%20cultures.%20From%20Chimango%20Games!";
	public var messageImage:String = "https://dl.dropboxusercontent.com/u/24695185/MobileGames/images/haxeflixel_pewma.jpg";
	
	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y,"", sendMessage);
		
		loadGraphic("assets/images/FB-f-Logo__blue_72.png");
	}
	

	
	private function sendMessage():Void
	{
		var textMessage:String = "https://www.facebook.com/dialog/feed?app_id="
		+ appID 
		+ "&link=" + shareLink 
		+"&picture=" + messageImage 
		+ "&name=" + messageTitle
		+ "&caption=" + messageCaption 
		+ "&description=" + messageDescription 
		+ "&redirect_uri=https://www.facebook.com/";
		
		Lib.getURL(new URLRequest(textMessage), "_blank");
	}
	
}