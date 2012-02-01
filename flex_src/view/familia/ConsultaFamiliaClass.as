package view.familia
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;

    import data.Familia;

    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaFamiliaClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaFamiliaClass()
        {
            super();

            percentWidth = 100;

            label = "Familia";

            controller = new HtDbController(Familia);

            addColumn("nuFamilia","Familia").width = 100;

            addColumn("nmFamilia","Familia").width = 100;

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
