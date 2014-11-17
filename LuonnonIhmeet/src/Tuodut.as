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
		
		
		[Embed(source="../media/Kevat/tausta.png")]
		public static const tausta:Class;
		
		[Embed(source="../media/Kevat/kevatmaasto_1.png")]
		public static const kevatmaasto_1:Class;
		
		[Embed(source="../media/Kevat/kevatmaasto_2.png")]
		public static const kevatmaasto_2:Class;
		
		[Embed(source="../media/Kevat/kivet.png")]
		public static const kivet:Class;
		
		[Embed(source="../media/Kevat/koivu_1.png")]
		public static const koivu_1:Class;
		
		[Embed(source="../media/Kevat/koivu_2.png")]
		public static const koivu_2:Class;
		
		[Embed(source="../media/Kevat/oksat_1.png")]
		public static const oksat_1:Class;
		
		[Embed(source="../media/Kevat/oksat_2.png")]
		public static const oksat_2:Class;
		
		[Embed(source="../media/Kevat/puska_1.png")]
		public static const puska_1:Class;
		
		[Embed(source="../media/Kevat/puska_2.png")]
		public static const puska_2:Class;
		
		[Embed(source="../media/Kevat/omenapuu.png")]
		public static const omenapuu:Class;
		
		[Embed(source="../media/Kevat/johanna.png")]
		public static const johanna:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		private static var gameTextureAtlas:TextureAtlas;
		
		[Embed(source="../media/SpriteSheet/SpriteSheetKevatMaa.png")]
		public static const KevatMaa:Class
		
		[Embed(source="../media/SpriteSheet/SpriteSheetKevatMaa.xml", mimeType="application/octet-stream")]
		public static const KevatMaaXML:Class;

		public static function getAtlas():TextureAtlas
		{
			if (gameTextureAtlas == null)
			{
				var texture:Texture = getTexture("KevatMaa");
				var xml:XML = XML(new KevatMaaXML());
				gameTextureAtlas = new TextureAtlas(texture, xml);
			}
			return gameTextureAtlas;
		}
		
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