package view.medida
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.HtDataGridColumnDate;

    import br.com.htecon.data.HtEntity

    import data.Medida;

    public class CadastroMedidaClass extends HtCadastroGrid
    {

        public function CadastroMedidaClass()
        {
            super();

            controller = new HtDbController(Medida);

            label = "Medida";

            percentWidth = 100;

            var dgsgMedida:DataGridColumn = new DataGridColumn("sgMedida");
            dgsgMedida.editable = false;
            dgsgMedida.width = 100;
            dgsgMedida.headerText = "Medida";

            var dgnmMedida:DataGridColumn = new DataGridColumn("nmMedida");
            dgnmMedida.editable = true;
            dgnmMedida.headerText = "Medida";

            var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
            dgflAtivo.editable = true;
            dgflAtivo.headerText = "Ativo";

            dataGrid.columns = [dgsgMedida, dgnmMedida, dgflAtivo];

            abrirConsultando = true;

        }

    }
}
