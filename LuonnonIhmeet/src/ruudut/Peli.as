package ruudut
{
	import starling.display.Sprite;
	
	public class Peli extends Sprite
	{
		public function Peli()
		{
			super();
			
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