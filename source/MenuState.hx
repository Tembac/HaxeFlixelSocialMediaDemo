package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		
		var buttonTwitter:ButtonTwitter = new ButtonTwitter(150, 300);
		//to disable button
		//buttonTwitter.visible = false;
		add(buttonTwitter);
		
		var buttonFacebook:ButtonFacebook = new ButtonFacebook(300, 300);
		//to disable button
		//buttonFacebook.visible = false;
		add(buttonFacebook);
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
		super.update();
		
		//previene que el pájaro accione si se cliquea en el globo
		if (FlxG.mouse.justReleased)
		{
			Reg.clickedOnSomethingElse = false;
		}
	}	
}