package view.embalagem
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;

    import data.Embalagem;

    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaEmbalagemClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaEmbalagemClass()
        {
            super();

            percentWidth = 100;

            label = "Embalagem";

            controller = new HtDbController(Embalagem);

            addColumn("sgEmbalagem","Embalagem").width = 100;

            addColumn("nmEmbalagem","Embalagem").width = 100;

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
