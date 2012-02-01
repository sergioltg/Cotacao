package view.empresa
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;
    
    import data.Empresa;
    import data.Fornecedor;
    
    import mx.controls.dataGridClasses.DataGridColumn;
    
    import view.fornecedor.CadastroFornecedor;

    public class ConsultaEmpresaClass extends HtConsultaGrid
    {

        private var telaFilter:TelaFormFilter;

        public function ConsultaEmpresaClass()
        {
            super();                         

            percentWidth = 100;

            label = "Empresa";

            controller = new HtDbController(Empresa);
			
			telaCadastro = CadastroEmpresa;
			
			var dgcdFornecedor:DataGridColumn = new DataGridColumn("cdEmpresa");
			dgcdFornecedor.width = 80;
			dgcdFornecedor.headerText = "Codigo";
			
			var dgnmRazaoSocial:DataGridColumn = new DataGridColumn("nmRazaosocial");
			dgnmRazaoSocial.headerText = "Razao Social";
			
			var dgdeSegmento:DataGridColumn = new HtDataGridColumn("segmento.deSegmento");
			dgdeSegmento.headerText = "Segmento";
			dgdeSegmento.width = 140;
			
			var dgnuCnpj:DataGridColumn = new DataGridColumn("nuCnpj");
			dgnuCnpj.width = 120;
			dgnuCnpj.headerText = "CPF/CNPJ";

            dataGridConsulta.columns = [dgcdFornecedor, dgnmRazaoSocial, dgdeSegmento, dgnuCnpj];

            telaFilter = new TelaFormFilter();
            telaFilter.dataProvider = filter;
			
			setFormFilter(telaFilter);
			
            abrirConsultando = true;
			estadoEditar = true;
        }

    }
}
