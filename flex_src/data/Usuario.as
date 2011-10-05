package data
{
	import br.com.htecon.data.HtEntity;
	
	[Bindable]
	[RemoteClass(alias="br.com.extra.seguranca.persistent.Usuario")]
	public class Usuario extends HtEntity
	{
		
		public var cdUsuario:int;
		public var nmUsuario:String;
		public var deEmail:String;
		public var deLogin:String;
		public var flAtivo:String;
		public var flSuperusuario:String;
		
		override public function getId():String {
			return cdUsuario + "";			
		}		
		
		
	}
}