package view.produtoassociacao
{
	import br.com.htecon.controls.HtButtonBar;
	import br.com.htecon.controls.events.HtButtonBarClickEvent;
	import br.com.htecon.controls.events.HtCampoConsultaEvent;
	import br.com.htecon.util.StringUtil;
	
	import components.consultas.CampoConsultaFamilia;
	import components.controllers.ProdutosAssociacaoController;
	
	import data.Produto;
	
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	
	import mx.containers.TitleWindow;
	import mx.containers.VBox;
	import mx.controls.Alert;
	import mx.controls.DataGrid;
	import mx.core.IFlexDisplayObject;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	
	import org.swizframework.Swiz;

	public class ProdutoAssociacaoClass extends VBox
	{
		
		public static const TYPE_EMPRESAS:int = 1;
	
		[Bindable]
		public var controller: ProdutosAssociacaoController;
		
		[Bindable]
		public var campoConsultaFamilia:CampoConsultaFamilia;
		
		[Bindable]
		public var gridProdutos:DataGrid;
		
		[Bindable]
		public var gridProdutosAssociados:DataGrid;
		
		public function ProdutoAssociacaoClass()
		{
			controller = Swiz.getBean("produtosAssociacaoController") as ProdutosAssociacaoController;
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			
		}

		
		public static function open(parent:DisplayObject, id:String, type:int):void {
			var titleWindow:TitleWindow = TitleWindow(PopUpManager.createPopUp(parent, TitleWindow, true));
			
			var produtoassociacao:ProdutoAssociacao = new ProdutoAssociacao();
			produtoassociacao.findProdutosAssociados(id, type);
			
			titleWindow.showCloseButton = true;
			
			titleWindow.addEventListener(CloseEvent.CLOSE, function():void {PopUpManager.removePopUp(titleWindow);});
			
			titleWindow.width = 650;
			titleWindow.height = 500;
			titleWindow.addChild(produtoassociacao);
			titleWindow.title = "Associacao de Produtos";
			
			PopUpManager.centerPopUp(titleWindow);
		}
		
		public function findProdutosAssociados(id:String, type:int):void {
			controller.findProdutosAssociados(type, id);
		}
		
		protected function campoConsultaFamilia_itemSelectedHandler(event:HtCampoConsultaEvent):void
		{
			controller.findProdutos(campoConsultaFamilia.text);			
		}
		
		protected function InsertProductButton_clickHandler(event:MouseEvent):void
		{
			controller.addProdutos(gridProdutos.selectedIndices);
		}
		
		
		protected function DeleteProductButton_clickHandler(event:MouseEvent):void
		{
			controller.removeProdutos(gridProdutosAssociados.selectedIndices);
		}
		
		protected function buttonBar_buttonClickedHandler(event:HtButtonBarClickEvent):void
		{
			switch (event.button)
			{
				case HtButtonBar.SAVE_BUTTON:
					controller.saveProdutosAssociados();
					break;
				case HtButtonBar.CLOSE_BUTTON:
					PopUpManager.removePopUp(IFlexDisplayObject(parent));					
					break;
				
			}			

		}
		
		
	}
}