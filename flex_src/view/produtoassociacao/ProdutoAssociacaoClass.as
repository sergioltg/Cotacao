package view.produtoassociacao
{
	import components.controllers.ProdutosAssociacaoController;
	
	import flash.display.DisplayObject;
	
	import mx.containers.TitleWindow;
	import mx.containers.VBox;
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	
	import org.swizframework.Swiz;

	public class ProdutoAssociacaoClass extends VBox
	{
		[Bindable]
		public var controller: ProdutosAssociacaoController;
		
		public function ProdutoAssociacaoClass()
		{
			controller = Swiz.getBean("produtosAssociacaoController") as ProdutosAssociacaoController;
		}
		
		public static function open(parent:DisplayObject, entity:Object):void {
			var titleWindow:TitleWindow = TitleWindow(PopUpManager.createPopUp(parent, TitleWindow, true));
			
			var produtoassociacao:ProdutoAssociacao = new ProdutoAssociacao();
			
			titleWindow.showCloseButton = true;
			
			titleWindow.addEventListener(CloseEvent.CLOSE, function():void {PopUpManager.removePopUp(titleWindow);});
			
			titleWindow.width = 650;
			titleWindow.height = 500;
			titleWindow.addChild(produtoassociacao);
			titleWindow.title = "Associacao de Produtos";
			
			PopUpManager.centerPopUp(titleWindow);
		}		
		
	}
}