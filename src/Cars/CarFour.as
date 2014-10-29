package Cars 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Kramboja | |Koen van der Velden
	 */
	public class CarFour extends Sprite
	{
		public var speed:uint = 5;
		public function CarFour() 
		{
			graphics.beginFill(0x000000, 1);
			graphics.drawRect(0, 0, 75, 50);
			
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e:Event):void 
		{
			this.x += speed;
			
			if (this.x >= stage.stageWidth + 100)
			{
				this.x = -200;
			}
		}
	}

}