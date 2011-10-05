package view.familia
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.HtDataGridColumnDate;

    import br.com.htecon.data.HtEntity

    import data.Familia;

    public class CadastroFamiliaClass extends HtCadastroGrid
    {

        public function CadastroFamiliaClass()
        {
            super();

            controller = new HtDbController(Familia);

            label = "Familia";

            percentWidth = 100;

            var dgnuFamilia:DataGridColumn = new DataGridColumn("nuFamilia");
            dgnuFamilia.editable = false;
            dgnuFamilia.width = 100;
            dgnuFamilia.headerText = "Familia";

            var dgnmFamilia:DataGridColumn = new DataGridColumn("nmFamilia");
            dgnmFamilia.editable = true;
            dgnmFamilia.headerText = "Familia";

            var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
            dgflAtivo.editable = true;
            dgflAtivo.headerText = "Ativo";

            dataGrid.columns = [dgnuFamilia, dgnmFamilia, dgflAtivo];

            abrirConsultando = true;

        }

    }
}
