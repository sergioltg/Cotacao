package view.fornecedor
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controller.events.HtControllerCallBackEvent;
    import br.com.htecon.controls.HtButtonBar;
    import br.com.htecon.controls.HtDataForm;
    import br.com.htecon.controls.cadastro.HtCadastroEdit;

    import components.InformacoesSistema;

    import data.Fornecedor;

    import mx.controls.Alert;

    public class CadastroFornecedorClass extends HtCadastroEdit
    {

        public var dataForm:HtDataForm;

        public function CadastroFornecedorClass()
        {
            super();

            controller = new HtDbController(Fornecedor);
        }

        private function get fornecedor():Fornecedor {
            return controller.entity as Fornecedor;
        }

        override protected function antesSalvar():Boolean
        {
            var valid:Boolean = dataForm.isValid();
            if (!valid) {
                showErrosForm(dataForm);
            }
			
			fornecedor.flAtivo = "S";
			fornecedor.flHabilitacotacao = "S";

            return valid;
        }

        override protected function iniciaTela() : void {
            dataForm.setFocus();
        }

    }
}
