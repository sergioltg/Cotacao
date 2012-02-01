package view.fornecedor
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;
    
    import data.Fornecedor;
    
    import mx.controls.dataGridClasses.DataGridColumn;
    
    import view.fornecedor.CadastroFornecedor;

    public class ConsultaFornecedorClass extends HtConsultaGrid
    {

        private var telaFilter:TelaFormFilter;

        public function ConsultaFornecedorClass()
        {
            super();                         

            percentWidth = 100;

            label = "Fornecedor";

            controller = new HtDbController(Fornecedor);
			
			telaCadastro = CadastroFornecedor;
			
			var dgcdFornecedor:DataGridColumn = new DataGridColumn("cdFornecedor");
			dgcdFornecedor.width = 80;
			dgcdFornecedor.headerText = "Codigo";
			
			var dgnmRazaoSocial:DataGridColumn = new DataGridColumn("nmRazaosocial");
			dgnmRazaoSocial.headerText = "Nome/Razao Social";
			
			var dgnmCidade:DataGridColumn = new HtDataGridColumn("cidade.nmCidade");
			dgnmCidade.headerText = "Cidade";
			dgnmCidade.width = 140;
			
			var dgnuCpfcnpj:DataGridColumn = new DataGridColumn("nuCnpj");
			dgnuCpfcnpj.width = 120;
			dgnuCpfcnpj.headerText = "CPF/CNPJ";

            dataGridConsulta.columns = [dgcdFornecedor, dgnmRazaoSocial, dgnmCidade, dgnuCpfcnpj];

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
