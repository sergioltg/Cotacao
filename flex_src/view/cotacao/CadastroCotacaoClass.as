package view.cotacao
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controller.events.HtControllerCallBackEvent;
    import br.com.htecon.controls.HtButtonBar;
    import br.com.htecon.controls.HtDataForm;
    import br.com.htecon.controls.cadastro.HtCadastroEdit;
    
    import components.InformacoesSistema;
    
    import data.Cotacao;
    
    import mx.controls.Alert;

    public class CadastroCotacaoClass extends HtCadastroEdit
    {

        public var dataForm:HtDataForm;

        public function CadastroCotacaoClass()
        {
            super();

            controller = new HtDbController(Cotacao);
        }

        private function get cotacao():Cotacao {
            return controller.entity as Cotacao;
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
