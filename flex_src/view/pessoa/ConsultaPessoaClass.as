package view.pessoa
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;
    import br.com.htecon.util.Util;
    
    import data.Pessoa;
    
    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaPessoaClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaPessoaClass()
        {
            super();                         

            percentWidth = 100;

            label = "Pessoa";

            controller = new HtDbController(Pessoa);
			
			telaCadastro = CadastroPessoa;
			
			var dgnuCpfcnpj:DataGridColumn = new DataGridColumn("nuCpfcnpj");
			dgnuCpfcnpj.width = 100;
			dgnuCpfcnpj.headerText = "CPF/CNPJ";
			dgnuCpfcnpj.labelFunction = labelFunctionCpfCnpjParte;

            var dgnmPessoa:DataGridColumn = new DataGridColumn("nmPessoa");
            dgnmPessoa.headerText = "Nome";

            dataGridConsulta.columns = [dgnuCpfcnpj, dgnmPessoa];

         //    telaFilter = new TelaFormFilter();
         //    telaFilter.dataProvider = filter;

         //    panelFilter.visible = true;
         //    panelFilter.addChild(telaFilter);
         //    panelFilter.height = 120;
            montaFiltroPelasColunas();
			
            abrirConsultando = true;
			estadoEditar = true;
        }

        override protected function limpar() : void {
            super.limpar();
        //  telaFilter.clear();
        }
		
		private function labelFunctionCpfCnpjParte(item:Object, col:DataGridColumn):String {
			if (item.tpPessoa == "F") {
				return Util.formatarCpf(item.nuCpfcnpj);
			} else {
				return Util.formatarCnpj(item.nuCpfcnpj);
			}
		}
		

    }
}
