package components.controllers
{
	import br.com.htecon.controller.HtDbController;
	
	import components.delegates.ProdutosAssociacaoDelegate;
	
	import data.Prodassociationmeta;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;

	public class ProdutosAssociacaoController extends HtDbController
	{		
		
		private var currentType:int;
		private var currentId:String;
		
		[Autowire(bean="produtosAssociacaoDelegate")]
		public var produtosAssociacaoDelegate:ProdutosAssociacaoDelegate;
		
		[Bindable]
		public var listProdutos:ArrayCollection;

		[Bindable]
		public var listProdutosAssociados:ArrayCollection;
		
		[Bindable]
		public static var listChanges:ArrayCollection;
		
		public function ProdutosAssociacaoController()
		{
			listProdutos = new ArrayCollection();
			listProdutosAssociados = new ArrayCollection();
			listChanges = new ArrayCollection();
		}
		
		public function findProdutos(nuFamilia):void {
			executeServiceCall(produtosAssociacaoDelegate.findProdutos(nuFamilia), resultFindProdutos);			
		}
		
		public function findProdutosAssociados(type:int, id:String):void{
			currentType = type;			
			currentId = id;
			executeServiceCall(produtosAssociacaoDelegate.findProdutosAssociados(type, id), resultFindProdutosAssociados);
		}
		
		private function resultFindProdutos(event:ResultEvent):void {
			listProdutos = event.result as ArrayCollection;	
		}
		
		private function resultFindProdutosAssociados(event:ResultEvent):void {
			listProdutosAssociados = event.result as ArrayCollection;
			listChanges.removeAll();
		}
		
		public function saveProdutosAssociados():void {
			produtosAssociacaoDelegate.saveProdutosAssociados(currentType, currentId, listChanges);			
		}
		
		private function getIndexProduto(cdProduto:String):int {
			var n:int = 0;
			for each (var produto:Prodassociationmeta in listChanges) {
				if (produto.cdProduto == cdProduto) {
					return n;
				}
				n++;
			}
			return -1;
		}
		
		public function addProdutoChange(cdProduto:String):void {
			var n:int = getIndexProduto(cdProduto);
			if (n != -1) {
				listChanges.removeItemAt(n);
			} else {
				var insert:Prodassociationmeta = new Prodassociationmeta();
				insert.cdProduto = cdProduto;
				insert.operation = Prodassociationmeta.OPERATION_INSERT;
			}
		}
		
		public function removeProdutoChange(cdProduto:String):void {
			var n:int = getIndexProduto(cdProduto);
			if (n != -1) {
				listChanges.removeItemAt(n);				
			} else {
				var insert:Prodassociationmeta = new Prodassociationmeta();
				insert.cdProduto = cdProduto;
				insert.operation = Prodassociationmeta.OPERATION_DELETE;
			}			
		}
		
		
	}
}