package
{
	import events.NavigationEvent;
	
	import ruudut.Menu;
	import ruudut.Peli;
	import ruudut.Ohjeet;
	import ruudut.Tekijat;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenMenu:Menu;
		private var screenPeli:Peli;
		private var screenOhjeet:Ohjeet;
		private var screenTekijat:Tekijat;
		
		public function Game()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.addEventListener(events.NavigationEvent.CHANGE_SCREEN, onChangeScreen);
			
			screenMenu = new Menu();
			this.addChild(screenMenu);
			screenMenu.initialize();
			
			screenPeli = new Peli();
			screenPeli.disposeTemporarily();
			this.addChild(screenPeli);
			
			screenOhjeet = new Ohjeet();
			screenOhjeet.disposeTemporarily();
			this.addChild(screenOhjeet);
			
			screenTekijat = new Tekijat();
			screenTekijat.disposeTemporarily();
			this.addChild(screenTekijat);
		}
		private function onChangeScreen(event:NavigationEvent):void
		{
			switch (event.params.id)
			{
				case "peli":
					screenMenu.disposeTemporarily();
					screenPeli.initialize();
					break;
				
				case "ohjeet":
					screenMenu.disposeTemporarily();
					screenOhjeet.initialize();
					break;
				
				case "tekijat":
					screenMenu.disposeTemporarily();
					screenTekijat.initialize();
					break;
				
				case "menu":
					screenOhjeet.disposeTemporarily();
					screenMenu.initialize();
					break;
				
				case "menu2":
					screenTekijat.disposeTemporarily();
					screenMenu.initialize();
					break;
			}
		}
	}
}