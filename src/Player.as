package  
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Kramboja | |Koen van der Velden
	 */
	public class Player extends Sprite
	{
		
		public function Player($stageRef:Stage) 
		{
			graphics.beginFill(0x00ff00, 1);
			graphics.drawRect(0, 0, 50, 50);
			
			
			$stageRef.addEventListener(KeyboardEvent.KEY_DOWN, playerMovement);
			$stageRef.addEventListener(KeyboardEvent.KEY_UP, playerMovement);
		}
		
		private function playerMovement(e:KeyboardEvent):void 
		{
			if (e.keyCode == 37 && this.x >= 25)
			{
				this.x -= 25;
			}
			if (e.keyCode == 38 && this.y >= 25)
			{
				this.y -= 25;
			}
			if (e.keyCode == 39 && this.x <= stage.stageWidth - this.width*1.5)
			{
				this.x += 25;
			}
			if (e.keyCode == 40 && this.y <= stage.stageHeight - this.height *2.5)
			{
				this.y += 25;
			}
		}
		
		
		
	}

}