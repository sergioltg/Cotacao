package components
{
	import data.Usuario;
	
	import mx.collections.ArrayCollection;
	
	
	public class InformacoesSistema
	{
		
		public static const instance:InformacoesSistema = new InformacoesSistema();
		
		[Bindable]
		public var usuario:Usuario;
		
		[Bindable]
		public var user:String;
		
		[Bindable]
		public var menu:ArrayCollection;
		
		public function InformacoesSistema()
		{
		}
		

	}
}