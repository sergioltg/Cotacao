package view.grupo
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.cadastro.HtCadastroGrid;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.HtDataGridColumnDate;

    import br.com.htecon.data.HtEntity

    import data.Grupo;

    public class CadastroGrupoClass extends HtCadastroGrid
    {

        public function CadastroGrupoClass()
        {
            super();

            controller = new HtDbController(Grupo);

            label = "Grupo";

            percentWidth = 100;

            var dgcdGrupo:DataGridColumn = new DataGridColumn("cdGrupo");
            dgcdGrupo.editable = false;
            dgcdGrupo.width = 100;
            dgcdGrupo.headerText = "Grupo";

            var dgnmGrupo:DataGridColumn = new DataGridColumn("nmGrupo");
            dgnmGrupo.editable = true;
            dgnmGrupo.headerText = "Grupo";

            dataGrid.columns = [dgcdGrupo, dgnmGrupo];

            abrirConsultando = true;

        }

    }
}
