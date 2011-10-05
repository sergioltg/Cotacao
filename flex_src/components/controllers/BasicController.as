package components.controllers
{
	
	import br.com.htecon.util.Processando;
	
	import data.*;
	
	import org.swizframework.controller.AbstractController;

	public class BasicController extends AbstractController
	{
		
		private var processando:Processando;
		
		
		public function startProcessando():void {
			processando = Processando.show();			
		}
		
		public function endProcessando():void {
			if (processando != null) {
				processando.close();
				processando = null;
			}			
		}		
		
		
	}
}