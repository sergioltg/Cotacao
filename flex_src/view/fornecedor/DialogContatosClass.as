package view.fornecedor
{
	import br.com.htecon.controls.cadastro.HtCadastroDialog;
	
	import data.Fornecedorcontato;

	public class DialogContatosClass extends HtCadastroDialog
	{
		
		public function DialogContatosClass()
		{
		}
		
		override protected function antesSalvar():Boolean {
			Fornecedorcontato(entity).flAtivo = "S";
			return true;
		}	
		
		
	}
}