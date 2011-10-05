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

            telaCadastro = CadastroSegmento;

            var dgcdSegmento:DataGridColumn = new DataGridColumn("cdSegmento");
            dgcdSegmento.width = 100;
            dgcdSegmento.headerText = "Segmento";

            var dgdeSegmento:DataGridColumn = new DataGridColumn("deSegmento");
            dgdeSegmento.width = 100;
            dgdeSegmento.headerText = "Segmento";

            var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
            dgflAtivo.width = 100;
            dgflAtivo.headerText = "Ativo";

            dataGridConsulta.columns = [dgcdSegmento, dgdeSegmento, dgflAtivo];

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

    }
}
