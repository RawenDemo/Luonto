package ruudut
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class KevatPeli extends Sprite
	{
		private var tausta:Image;
		private var kevatmaasto:Image;
		private var koivu_1:Image;
		private var koivu_2:Image;
		private var oksat_1:Image;
		private var oksat_2:Image;
		private var omaneapuu:Image;
		private var puska_1:Image;
		private var puska_2:Image;
		private var vesikasvit:Image;
		
		public function KevatPeli()
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
			tausta = new Image(Tuodut.getTexture("tausta"));
			this.addChild(tausta);
			
			kevatmaasto = new Image(Tuodut.getTexture("kevatmaasto"));
			kevatmaasto.x = 200;
			kevatmaasto.y = 500;
			this.addChild(kevatmaasto);
			
			koivu_1 = new Image(Tuodut.getTexture("koivu_1"));
			koivu_1.x = 200;
			koivu_1.y = 300;
			this.addChild(koivu_1);
			
			koivu_2 = new Image(Tuodut.getTexture("koivu_2"));
			koivu_2.x = 200;
			koivu_2.y = 100;
			this.addChild(koivu_2);
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