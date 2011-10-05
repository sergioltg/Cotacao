package view.segmento
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.HtDataGridColumnDate;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    import br.com.htecon.data.HtEntity;
    
    import data.Segmento;
    
    import mx.controls.dataGridClasses.DataGridColumn;

    public class CadastroSegmentoClass extends HtCadastroGrid
    {

        public function CadastroSegmentoClass()
        {
            super();

            controller = new HtDbController(Segmento);

            label = "Segmento";

            percentWidth = 100;

            var dgcdSegmento:DataGridColumn = new DataGridColumn("cdSegmento");
            dgcdSegmento.editable = false;
            dgcdSegmento.width = 100;
            dgcdSegmento.headerText = "Segmento";

            var dgdeSegmento:DataGridColumn = new DataGridColumn("deSegmento");
            dgdeSegmento.editable = true;
            dgdeSegmento.headerText = "Segmento";

            var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
            dgflAtivo.editable = true;
            dgflAtivo.headerText = "Ativo";

            dataGrid.columns = [dgcdSegmento, dgdeSegmento, dgflAtivo];

            abrirConsultando = true;

        }

    }
}
