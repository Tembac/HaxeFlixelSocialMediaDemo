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
	public var messageTitle:String = "I got a Score of 1000 on the game PEWMA! Can you beat me?";
	public var messageCaption:String = "PEWMA mobile game";
	public var shareLink:String = "http://chimangogames.com/";
	public var messageDescription:String = "PEWMA is a game for ios and Android devices! Adictive, fun and inspired on ancient south American cultures. From Chimango Games!";
	public var messageImage:String = "https://dl.dropboxusercontent.com/u/24695185/MobileGames/images/haxeflixel_pewma.jpg";
	
	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y, sendMessage);
		
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
		
		Lib.getURL(new URLRequest(textMessage));
	}
	
}