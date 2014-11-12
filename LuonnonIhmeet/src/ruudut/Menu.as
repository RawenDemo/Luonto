package ruudut
{
	import events.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Menu extends Sprite
	{
		private var bgMenu:Image;
		private var otsikko:Image;
		private var aloitaBtn:Button;
		private var aloitaBtnP:Button;
		private var ohjeetBtn:Button;
		private var ohjeetBtnP:Button;
		private var tekijatBtn:Button;
		private var tekijatBtnP:Button;
		
		public function Menu()
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
			bgMenu = new Image(Tuodut.getTexture("BgMenu"));
			this.addChild(bgMenu);
			
			otsikko = new Image(Tuodut.getTexture("Otsikko"));
			otsikko.x = 100;
			otsikko.y = 10;
			this.addChild(otsikko);
			
			aloitaBtn = new Button(Tuodut.getTexture("AloitaBtn"));
			aloitaBtn.x = 410;
			aloitaBtn.y = 150;
			this.addChild(aloitaBtn);
			
			ohjeetBtn = new Button(Tuodut.getTexture("OhjeetBtn"));
			ohjeetBtn.x = 420;
			ohjeetBtn.y = 225;
			this.addChild(ohjeetBtn);
			
			tekijatBtn = new Button(Tuodut.getTexture("TekijatBtn"));
			tekijatBtn.x = 430;
			tekijatBtn.y = 400;
			this.addChild(tekijatBtn);
			
			this.addEventListener(Event.TRIGGERED, onMenuClick);
			this.addEventListener(Event.TRIGGERED, onMenuClick2);
			this.addEventListener(Event.TRIGGERED, onMenuClick3);
		}
		
		private function onMenuClick(event:Event):void
		{
			var buttonClicked:Button = event.target as Button;
			if((event.target as Button) == aloitaBtn)
			{
				this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id: "peli"}, true));
			}
		}
		
		private function onMenuClick2(event:Event):void
		{
			var buttonClicked:Button = event.target as Button;
			if((event.target as Button) == ohjeetBtn)
			{
				this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id: "ohjeet"}, true));
			}
		}
		
		private function onMenuClick3(event:Event):void
		{
			var buttonClicked:Button = event.target as Button;
			if((event.target as Button) == tekijatBtn)
			{
				this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id: "tekijat"}, true));
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