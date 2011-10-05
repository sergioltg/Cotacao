package view.produto
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controller.events.HtControllerCallBackEvent;
    import br.com.htecon.controls.HtButtonBar;
    import br.com.htecon.controls.HtDataForm;
    import br.com.htecon.controls.cadastro.HtCadastroEdit;

    import components.InformacoesSistema;

    import data.Produto;

    import mx.controls.Alert;

    public class CadastroProdutoClass extends HtCadastroEdit
    {

        public var dataForm:HtDataForm;

        public function CadastroProdutoClass()
        {
            super();

            controller = new HtDbController(Produto);
        }

        private function get produto():Produto {
            return controller.entity as Produto;
        }

        override protected function antesSalvar():Boolean
        {
            var valid:Boolean = dataForm.isValid();
            if (!valid) {
                showErrosForm(dataForm);
            }

            return valid;
        }

        override protected function iniciaTela() : void {
            dataForm.setFocus();
        }

    }
}
