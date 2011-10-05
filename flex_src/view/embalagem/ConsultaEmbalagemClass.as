package view.embalagem
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controls.HtDataGridColumn;
    import br.com.htecon.controls.consulta.HtConsultaGrid;

    import data.Embalagem;

    import mx.controls.dataGridClasses.DataGridColumn;

    public class ConsultaEmbalagemClass extends HtConsultaGrid
    {

        // private var telaFilter:TelaFormFilter;

        public function ConsultaEmbalagemClass()
        {
            super();

            percentWidth = 100;

            label = "Embalagem";

            controller = new HtDbController(Embalagem);

            telaCadastro = CadastroEmbalagem;

            var dgsgEmbalagem:DataGridColumn = new DataGridColumn("sgEmbalagem");
            dgsgEmbalagem.width = 100;
            dgsgEmbalagem.headerText = "Embalagem";

            var dgnmEmbalagem:DataGridColumn = new DataGridColumn("nmEmbalagem");
            dgnmEmbalagem.width = 100;
            dgnmEmbalagem.headerText = "Embalagem";

            var dgflAtivo:DataGridColumn = new DataGridColumn("flAtivo");
            dgflAtivo.width = 100;
            dgflAtivo.headerText = "Ativo";

            dataGridConsulta.columns = [dgsgEmbalagem, dgnmEmbalagem, dgflAtivo];

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
