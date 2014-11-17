package
{
	import flash.display.Sprite;
	
	import ruudut.KevatPeli;
	
	import starling.core.Starling;
	
	[SWF(frameRate="60", width="640", height="480", backgroundColor="0x333333")]
	public class LuonnonIhmeet extends Sprite
	{
		private var myStarling:Starling;
		
		public function LuonnonIhmeet()
		{
			myStarling = new Starling(ruudut.KevatPeli, stage);
			myStarling.antiAliasing = 1;
			myStarling.start();
		}
	}
}