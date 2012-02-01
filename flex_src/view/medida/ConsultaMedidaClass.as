package view.medida
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;

    import data.Medida;

    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaMedidaClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaMedidaClass()
        {
            super();

            percentWidth = 100;

            label = "Medida";

            controller = new HtDbController(Medida);

            addColumn("sgMedida","Medida").width = 100;

            addColumn("nmMedida","Medida").width = 100;

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
