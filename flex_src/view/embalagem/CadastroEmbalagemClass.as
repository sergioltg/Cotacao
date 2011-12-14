package view.embalagem
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    
    import components.itemrenderer.CheckItemRendererFlAtivo;
    
    import data.Embalagem;
    
    import mx.controls.dataGridClasses.DataGridColumn;
    import mx.core.ClassFactory;

    public class CadastroEmbalagemClass extends HtCadastroGrid
    {

        public function CadastroEmbalagemClass()
        {
            super();

            controller = new HtDbController(Embalagem);

            label = "Embalagem";

            percentWidth = 100;

            var dgsgEmbalagem:DataGridColumn = new DataGridColumn("sgEmbalagem");
            dgsgEmbalagem.editable = false;
            dgsgEmbalagem.width = 80;
            dgsgEmbalagem.headerText = "Embalagem";

            var dgnmEmbalagem:DataGridColumn = new DataGridColumn("nmEmbalagem");
            dgnmEmbalagem.editable = true;
            dgnmEmbalagem.headerText = "Embalagem";

			var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
			dgflAtivo.editable = true;
			dgflAtivo.headerText = "Ativo";
			dgflAtivo.editorDataField = "valor";			
			dgflAtivo.width = 60;
			dgflAtivo.rendererIsEditor = true;
			dgflAtivo.itemRenderer = new ClassFactory(CheckItemRendererFlAtivo);			

            dataGrid.columns = [dgsgEmbalagem, dgnmEmbalagem, dgflAtivo];

            abrirConsultando = true;

        }

    }
}
