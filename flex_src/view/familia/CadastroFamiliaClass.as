package view.familia
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.HtDataGridColumnDate;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    import br.com.htecon.data.HtEntity;
    
    import components.itemrenderer.CheckItemRendererFlAtivo;
    
    import data.Familia;
    
    import mx.controls.dataGridClasses.DataGridColumn;
    import mx.core.ClassFactory;

    public class CadastroFamiliaClass extends HtCadastroGrid
    {

        public function CadastroFamiliaClass()
        {
            super();

            controller = new HtDbController(Familia);

            label = "Familia";

            percentWidth = 100;

            var dgnuFamilia:DataGridColumn = new DataGridColumn("nuFamilia");
            dgnuFamilia.width = 130;
            dgnuFamilia.headerText = "Familia";

            var dgnmFamilia:DataGridColumn = new DataGridColumn("nmFamilia");
            dgnmFamilia.editable = true;
            dgnmFamilia.headerText = "Familia";

			var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
			dgflAtivo.editable = true;
			dgflAtivo.headerText = "Ativo";
			dgflAtivo.editorDataField = "valor";			
			dgflAtivo.width = 60;
			dgflAtivo.rendererIsEditor = true;
			dgflAtivo.itemRenderer = new ClassFactory(CheckItemRendererFlAtivo);			

            dataGrid.columns = [dgnuFamilia, dgnmFamilia, dgflAtivo];

            abrirConsultando = true;

        }

    }
}
