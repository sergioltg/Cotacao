package components.delegates
{
	import br.com.htecon.delegate.BasicDelegate;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.remoting.RemoteObject;
	
	public class ProdutosAssociacaoDelegate extends BasicDelegate
	{
		[Autowire(bean="produtosAssociacaoService")]
		public var produtosAssociacaoService:RemoteObject;
		
		public function ProdutosAssociacaoDelegate() 
		{
		}
			
		public function findProdutosAssociados(type:int, id:String):AsyncToken {
			return produtosAssociacaoService.findProdutosAssociados(type, id);
		}
		
		public function findProdutos(nuFamilia:String):AsyncToken {
			return produtosAssociacaoService.findProdutos(nuFamilia);
		}
		
		public function saveProdutosAssociados(type:int, id:String, changes:ArrayCollection):AsyncToken {
			return produtosAssociacaoService.saveProdutosAssociados(type, id, changes);
		}	
					
		
	}
}