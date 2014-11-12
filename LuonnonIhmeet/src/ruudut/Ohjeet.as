package ruudut
{
	import events.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Ohjeet extends Sprite
	{
		private var ohjeet:Image;
		private var takaisin:Button;
		
		public function Ohjeet()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			drawScreen();
		}
		private function drawScreen():void
		{
			ohjeet = new Image(Tuodut.getTexture("OhjeetRuutu"));
			this.addChild(ohjeet);
			
			takaisin = new Button(Tuodut.getTexture("TakaisinBtn"));
			takaisin.x = 460;
			takaisin.y = 420;
			this.addChild(takaisin);
			
			this.addEventListener(Event.TRIGGERED, onTakaisinClick);
		}
		
		private function onTakaisinClick(event:Event):void
		{
			var buttonClicked:Button = event.target as Button;
			if((event.target as Button) == takaisin)
			{
				this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id: "menu"}, true));
			}
		}
		
		public function disposeTemporarily():void
		{
			this.visible = false;
		}
		
		public function initialize():void
		{
			this.visible = true;
		}
	}
}