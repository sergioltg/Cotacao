package components.controllers
{
	import br.com.htecon.security.HtAuthorization;
	import br.com.htecon.util.HtAutoScroll;
	
	import components.InformacoesSistema;
	import components.constants.ConstantsAdvice;
	import components.events.UsuarioLogadoEvent;
	
	import data.*;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.messaging.messages.ErrorMessage;
	import mx.rpc.AsyncResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	
	import org.swizframework.Swiz;

	public class LoginController extends BasicController
	{
		
		[Autowire(bean="segurancaService")]
		public var segurancaService:RemoteObject;
		
		public function login(user:String, password:String):void {
			segurancaService.channelSet.login(user, password).addResponder(new AsyncResponder(
				resultLogin, faultLogin));
		}
		
		
		private function resultLogin(event:ResultEvent, o:Object):void {
			
			carregaDadosUsuario(event.result);
			
			Swiz.dispatch(ConstantsAdvice.EVENT_LOGINSUCCESS);
			
			endProcessando();
		}
		
		private function carregaDadosUsuario(result:Object):void {
			InformacoesSistema.instance.user = result['name'];
			
			InformacoesSistema.instance.usuario = Usuario(result['usuario']);
			
			InformacoesSistema.instance.menu = result['menu'];
			
			var roles:ArrayCollection = result['roles'];
			
			HtAuthorization.instance.clearRoles();
			for each (var object:Object in roles) {
				HtAuthorization.instance.setRole(object["object"], object["role"]);
			}
			HtAuthorization.instance.active = "S" != InformacoesSistema.instance.usuario.flSuperusuario;
		}
		
		private function faultLogin(event:FaultEvent, o:Object):void {
			Alert.show(event.fault.faultString);
			endProcessando();
		}		
		
		[Mediate(event="LOGOUT")]
		public function logout():void {
			segurancaService.channelSet.logout();
		}
		
		[Mediate(event="VERIFICALOGADO")]
		public function verificaSeUsuarioEstaLogado():void {
			executeServiceCall(segurancaService.getUsuarioLogado(), resultUsuarioLogado, faultUsuarioLogado);
		}
		
		private function resultUsuarioLogado(event:ResultEvent):void {
			carregaDadosUsuario(event.result);
			
			Swiz.dispatchEvent(new UsuarioLogadoEvent(UsuarioLogadoEvent.USUARIOLOGADO, true));
		}
		
		private function faultUsuarioLogado(event:FaultEvent):void {
			Swiz.dispatchEvent(new UsuarioLogadoEvent(UsuarioLogadoEvent.USUARIOLOGADO, false));
		}
		
		
	}
}