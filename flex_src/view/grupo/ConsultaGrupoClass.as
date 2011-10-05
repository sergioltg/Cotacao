package view.grupo
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;

    import data.Grupo;

    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaGrupoClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaGrupoClass()
        {
            super();

            percentWidth = 100;

            label = "Grupo";

            controller = new HtDbController(Grupo);

            telaCadastro = CadastroGrupo;

            var dgcdGrupo:DataGridColumn = new DataGridColumn("cdGrupo");
            dgcdGrupo.width = 100;
            dgcdGrupo.headerText = "Grupo";

            var dgnmGrupo:DataGridColumn = new DataGridColumn("nmGrupo");
            dgnmGrupo.width = 100;
            dgnmGrupo.headerText = "Grupo";

            dataGridConsulta.columns = [dgcdGrupo, dgnmGrupo];

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
