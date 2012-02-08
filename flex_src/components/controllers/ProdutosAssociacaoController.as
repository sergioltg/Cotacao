package components.controllers
{
	import br.com.htecon.controller.HtDbController;
	import br.com.htecon.util.StringUtil;
	
	import components.delegates.ProdutosAssociacaoDelegate;
	
	import data.Prodassociationmeta;
	import data.Produto;
	
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
		
		public function findProdutos(nuFamilia:String):void {
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
			executeService(null, produtosAssociacaoDelegate.saveProdutosAssociados(currentType, currentId, listChanges), resultSaveProdutosAssociados);			
		}
		
		private function resultSaveProdutosAssociados(event:ResultEvent):void {
			listChanges.removeAll();
		}
		
		private function getIndexProduto(nuProduto:String):int {
			var n:int = 0;
			for each (var produto:Prodassociationmeta in listChanges) {
				if (produto.nuProduto == nuProduto) {
					return n;
				}
				n++;
			}
			return -1;
		}
		
		public function addProdutos(indices:Array):void {
			var indicesSorted:Array = indices.sort();
			for each (var index:int in indices) {
				var produto:Produto = listProdutos.getItemAt(index) as Produto;
				listProdutos.removeItemAt(index);
				listProdutosAssociados.addItem(produto);
				var n:int = getIndexProduto(produto.nuProduto);
				if (n != -1) {
					var meta:Prodassociationmeta = listChanges.getItemAt(n) as Prodassociationmeta;
					if (meta.operation == Prodassociationmeta.OPERATION_DELETE) {
						listChanges.removeItemAt(n);
					}
				} else {
					var insert:Prodassociationmeta = new Prodassociationmeta();
					insert.nuProduto = produto.nuProduto;
					insert.operation = Prodassociationmeta.OPERATION_INSERT;
					listChanges.addItem(insert);
				}
			}
		}
		
		public function removeProdutos(indices:Array):void {
			var indicesSorted:Array = indices.sort();
			for each (var index:int in indices) {
				var produto:Produto = listProdutosAssociados.getItemAt(index) as Produto;
				listProdutosAssociados.removeItemAt(index);
				listProdutos.addItem(produto);
				var n:int = getIndexProduto(produto.nuProduto);
				if (n != -1) {
					var meta:Prodassociationmeta = listChanges.getItemAt(n) as Prodassociationmeta;
					if (meta.operation == Prodassociationmeta.OPERATION_INSERT) {
						listChanges.removeItemAt(n);
					}
				} else {
					var insert:Prodassociationmeta = new Prodassociationmeta();
					insert.nuProduto = produto.nuProduto;
					insert.operation = Prodassociationmeta.OPERATION_DELETE;
				}			
				
			}			
		}
		
		private function removeProdutoChange(nuProduto:String):void {
			var n:int = getIndexProduto(nuProduto);
			if (n != -1) {
				listChanges.removeItemAt(n);				
			} else {
				var insert:Prodassociationmeta = new Prodassociationmeta();
				insert.nuProduto = nuProduto;
				insert.operation = Prodassociationmeta.OPERATION_DELETE;
			}			
		}
		
		
	}
}