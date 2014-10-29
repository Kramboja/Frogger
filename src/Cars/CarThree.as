package Cars 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Kramboja | |Koen van der Velden
	 */
	public class CarThree extends Sprite
	{
		public var speed:uint = 6;
		public function CarThree() 
		{
			graphics.beginFill(0x00FFFF);
			graphics.drawRect(0, 0, 60, 50);
			
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e:Event):void 
		{
			this.x -= speed;
			
			if (this.x <= -100)
			{
				this.x = stage.stageWidth + 150;
			}
		}
	}

}