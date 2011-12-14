package view.segmento
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;
    
    import data.Segmento;
    
    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaSegmentoClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaSegmentoClass()
        {
            super();

            percentWidth = 100;

            label = "Segmento";

            controller = new HtDbController(Segmento);

            var dgcdSegmento:DataGridColumn = new DataGridColumn("cdSegmento");
            dgcdSegmento.width = 100;
            dgcdSegmento.headerText = "Segmento";

            var dgdeSegmento:DataGridColumn = new DataGridColumn("deSegmento");
            dgdeSegmento.width = 100;
            dgdeSegmento.headerText = "Descricao";

            dataGridConsulta.columns = [dgcdSegmento, dgdeSegmento];

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
