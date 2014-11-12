package
{
	import flash.display.Sprite;
	
	import starling.core.Starling;
	
	[SWF(frameRate="60", width="640", height="480", backgroundColor="0x333333")]
	public class LuonnoIhmeet extends Sprite
	{
		private var myStarling:Starling;
		
		public function LuonnoIhmeet()
		{
			myStarling = new Starling(Game, stage);
			myStarling.antiAliasing = 1;
			myStarling.start();
		}
	}
}