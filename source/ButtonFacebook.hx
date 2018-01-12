package ;

import flash.net.URLRequest;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.ui.FlxButton;
import openfl.Lib;

/**
 * ...
 * @author Tembac
 */
class ButtonFacebook extends FlxButton
{
	//check options here: https://developers.facebook.com/docs/sharing/reference/feed-dialog
	public var appID:String = "508343469312204"; // you get this number from making an app on facebook. Very easy to do. This number is for my app PEWMA
	public var shareLink:String = "https://play.google.com/store/apps/details?id=com.chimango.pewma";
	
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
		+ "&redirect_uri=https://www.facebook.com/";
		
		Lib.getURL(new URLRequest(textMessage), "_blank");
	}
	
}