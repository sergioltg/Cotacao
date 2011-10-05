package components.events
{
	
	import flash.events.Event;

	public class UsuarioLogadoEvent extends Event{
		
		public static const USUARIOLOGADO:String = "UsuarioLogadoEvent.USUARIOLOGADO";
		public var isLogado:Boolean;
	
		public function UsuarioLogadoEvent(type:String, isLogado:Boolean, bubbles:Boolean = true, cancelable:Boolean = false){
   			this.isLogado = isLogado;
			
			super(type, bubbles, cancelable);
		}
		
	}
}