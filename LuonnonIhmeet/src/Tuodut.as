package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.text.BitmapFont;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	import starling.text.TextField
	
	public class Tuodut
	{
		[Embed(source="../media/Menu/Bg.png")]
		public static const BgMenu:Class;
		
		[Embed(source="../media/Menu/Otsikko.png")]
		public static const Otsikko:Class;
		
		[Embed(source="../media/Menu/APNappi.png")]
		public static const AloitaBtn:Class;
		
		[Embed(source="../media/Menu/APNappiP.png")]
		public static const AloitaBtnP:Class;
		
		[Embed(source="../media/Menu/ONappi.png")]
		public static const OhjeetBtn:Class;
		
		[Embed(source="../media/Menu/ONappiP.png")]
		public static const OhjeetBtnP:Class;
		
		[Embed(source="../media/Menu/TNappi.png")]
		public static const TekijatBtn:Class;
		
		[Embed(source="../media/Menu/TNappiP.png")]
		public static const TekijatBtnP:Class;
		
		[Embed(source="../media/Menu/Ohjeet.png")]
		public static const OhjeetRuutu:Class;
		
		[Embed(source="../media/Menu/Tekijät.png")]
		public static const TekijatRuutu:Class;
		
		[Embed(source="../media/Menu/TakNappi.png")]
		public static const TakaisinBtn:Class;
		
		/*[Embed(source="../media/Videot/KettuJuoksee.mp4")]
		public static const KettuJuoksee:Class;*/
		
		private static var gameTextures:Dictionary = new Dictionary();
		private static var gameTextureAtlas:TextureAtlas;
		
		/*[Embed(source="../media/TietoBoksit/TIEDOSTONIMI TÄHÄN")]
		public static const TietoBoksit:Class
		
		[Embed(source="../media/TietoBoksit/TIEDOSTONIMI TÄHÄN", mimeType="application/octet-stream")]
		public static const TietoBoksit:Class;*/
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Tuodut[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap)
			}
		return gameTextures[name];
		}
	}
}