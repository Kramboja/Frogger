package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Cars.CarOne;
	import Cars.CarTwo;
	import Cars.CarThree;
	import Cars.CarFour;
	import Cars.CarFive
	
	/**
	 * ...
	 * @author Kramboja | |Koen van der Velden
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
			var player : Player = new Player(stage);
			
			var carOne : CarOne;
			var carTwo : CarTwo;
			var carThree : CarThree;
			var carFour : CarFour;
			var carFive : CarFive;
			
			var carStreak:uint = 3;
			for (var i:Number = 0; i < carStreak; i++)
			{
				carOne = new CarOne();
				carOne.x = stage.stageWidth + i * 300;
				carOne.y = 550;
				
				carTwo = new CarTwo();
				carTwo.x = -120 - i*300;
				carTwo.y = 500;
				
				carThree = new CarThree();
				carThree.x = stage.stageWidth + i * 300
				carThree.y = 450;
				
				carFour = new CarFour();
				carFour.x = -200 - i*300;
				carFour.y = 400;
				
				if (i != 0)
				{
					carFive = new CarFive();
					carFive.x = stage.stageWidth * i;
					carFive.y = 350;
					addChild(carFive);
				}
				
				addChild(carOne);
				addChild(carTwo);
				addChild(carThree);
				addChild(carFour);
				
			}
			

			player.x = 400;
			player.y = 600;
			
			
			
			addChild(player);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
		}
		
	}
	
}