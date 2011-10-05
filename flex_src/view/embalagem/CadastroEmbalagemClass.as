package view.embalagem
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.HtDataGridColumnDate;

    import br.com.htecon.data.HtEntity

    import data.Embalagem;

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
            dgsgEmbalagem.width = 100;
            dgsgEmbalagem.headerText = "Embalagem";

            var dgnmEmbalagem:DataGridColumn = new DataGridColumn("nmEmbalagem");
            dgnmEmbalagem.editable = true;
            dgnmEmbalagem.headerText = "Embalagem";

            var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
            dgflAtivo.editable = true;
            dgflAtivo.headerText = "Ativo";

            dataGrid.columns = [dgsgEmbalagem, dgnmEmbalagem, dgflAtivo];

            abrirConsultando = true;

        }

    }
}
