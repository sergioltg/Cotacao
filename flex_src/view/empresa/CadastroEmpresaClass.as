package view.empresa
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controller.events.HtControllerCallBackEvent;
    import br.com.htecon.controls.HtButtonBar;
    import br.com.htecon.controls.HtDataForm;
    import br.com.htecon.controls.cadastro.HtCadastroEdit;

    import components.InformacoesSistema;

    import data.Empresa;

    import mx.controls.Alert;
                                  
    public class CadastroEmpresaClass extends HtCadastroEdit
    {

        public var dataForm:HtDataForm;

        public function CadastroEmpresaClass()
        {
            super();

            controller = new HtDbController(Empresa);
        }

        private function get empresa():Empresa {
            return controller.entity as Empresa;
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
