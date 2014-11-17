package ruudut
{
	import starling.events.KeyboardEvent
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class KevatPeli extends Sprite
	{
		private var tausta:Image;
		private var kevatmaasto_1:Image;
		private var kevatmaasto_2:Image;
		private var koivu_1:Image;
		private var koivu_2:Image;
		private var oksat_1:Image;
		private var oksat_2:Image;
		private var omenapuu:Image;
		private var puska_1:Image;
		private var puska_2:Image;
		private var vesikasvit:Image;
		private var kivet:Image;
		
		private var johanna:Image;
		
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
			
			kevatmaasto_1 = new Image(Tuodut.getTexture("kevatmaasto_1"));
			kevatmaasto_1.x = 0;
			kevatmaasto_1.y = 250;
			this.addChild(kevatmaasto_1);
			
			/*kevatmaasto_2 = new Image(Tuodut.getTexture("kevatmaasto_2"));
			kevatmaasto_2.x = 2000;
			kevatmaasto_2.y = 250;
			this.addChild(kevatmaasto_2);
			
			kivet = new Image(Tuodut.getTexture("kivet"));
			kivet.x = 500;
			kivet.y = 250;
			this.addChild(kivet);
			
			koivu_1 = new Image(Tuodut.getTexture("koivu_1"));
			koivu_1.x = 1000;
			koivu_1.y = 10;
			this.addChild(koivu_1);
			
			oksat_1 = new Image(Tuodut.getTexture("oksat_1"));
			oksat_1.x = 1000;
			oksat_1.y = 175;
			this.addChild(oksat_1);*/
			
			koivu_2 = new Image(Tuodut.getTexture("koivu_2"));
			koivu_2.x = 310;
			koivu_2.y = -50;
			this.addChild(koivu_2);
			
			oksat_2 = new Image(Tuodut.getTexture("oksat_2"));
			oksat_2.x = 310;
			oksat_2.y = 135;
			this.addChild(oksat_2);
			
			/*puska_1 = new Image(Tuodut.getTexture("puska_1"));
			puska_1.x = 3000;
			puska_1.y = 10;
			this.addChild(oksat_1);*/
			
			puska_2 = new Image(Tuodut.getTexture("puska_2"));
			puska_2.x = 520;
			puska_2.y = 320;
			this.addChild(puska_2);
			
			/*omenapuu = new Image(Tuodut.getTexture("omenapuu"));
			omenapuu.x = 1000;
			omenapuu.y = 10;
			this.addChild(omenapuu);*/
			
			johanna = new Image(Tuodut.getTexture("johanna"));
			johanna.x = 250;
			johanna.y = 270;
			johanna.width = 40
			johanna.height = 150
			this.addChild(johanna);
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