package view.cidade
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;

    import data.Cidade;

    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaCidadeClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaCidadeClass()
        {
            super();

            percentWidth = 100;

            label = "Cidade";

            controller = new HtDbController(Cidade);

            addColumn("cdCidade","Cidade").width = 100;

            addColumn("nmCidade","Cidade").width = 100;

            addColumn("sgUf","Uf").width = 100;

         //    telaFilter = new TelaFormFilter();
         //    telaFilter.dataProvider = filter;

         //    panelFilter.visible = true;
         //    panelFilter.addChild(telaFilter);
         //    panelFilter.height = 120;
            montaFiltroPelasColunas();
            abrirConsultando = true;
        }

        override protected function limpar() : void {
            super.limpar();
        //  telaFilter.clear();
        }

    }
}
