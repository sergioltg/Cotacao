package view.produto
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;
    
    import data.Produto;
    
    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaProdutoClass extends HtConsultaGrid
    {

        private var telaFilter:TelaFormFilter;

        public function ConsultaProdutoClass()
        {
            super();                         

            percentWidth = 100;

            label = "Produto";

            controller = new HtDbController(Produto);
			
			telaCadastro = CadastroProduto;
			
			var dgnuProduto:DataGridColumn = new DataGridColumn("nuProduto");
			dgnuProduto.width = 80;
			dgnuProduto.headerText = "Codigo";
			
			var dgnmProduto:DataGridColumn = new DataGridColumn("nmProduto");
			dgnmProduto.headerText = "Nome do produto";
			
			var dgnuFamilia:DataGridColumn = new HtDataGridColumn("nuFamilia");
			dgnuFamilia.headerText = "Familia";
			dgnuFamilia.width = 100;
			
			var dgnuEanprincipal:DataGridColumn = new DataGridColumn("nuEanprincipal");
			dgnuEanprincipal.width = 100;
			dgnuEanprincipal.headerText = "CPF/CNPJ";

            dataGridConsulta.columns = [dgnuProduto, dgnmProduto, dgnuFamilia, dgnuEanprincipal];

            telaFilter = new TelaFormFilter();
            telaFilter.dataProvider = filter;
			
			setFormFilter(telaFilter);
			
            abrirConsultando = true;
			estadoEditar = true;
        }

        override protected function limpar() : void {
            super.limpar();
            telaFilter.clear();
        }

    }
}
