package view.cidade
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.HtDataGridColumnDate;

    import br.com.htecon.data.HtEntity

    import data.Cidade;

    public class CadastroCidadeClass extends HtCadastroGrid
    {

        public function CadastroCidadeClass()
        {
            super();

            controller = new HtDbController(Cidade);

            label = "Cidade";

            percentWidth = 100;

            var dgcdCidade:DataGridColumn = new DataGridColumn("cdCidade");
            dgcdCidade.editable = false;
            dgcdCidade.width = 100;
            dgcdCidade.headerText = "Cidade";

            var dgnmCidade:DataGridColumn = new DataGridColumn("nmCidade");
            dgnmCidade.editable = true;
            dgnmCidade.headerText = "Cidade";

            var dgsgUf:DataGridColumn = new DataGridColumn("sgUf");
            dgsgUf.editable = true;
            dgsgUf.headerText = "Uf";

            dataGrid.columns = [dgcdCidade, dgnmCidade, dgsgUf];

            abrirConsultando = true;

        }

    }
}
