package view.pessoa
{
    import br.com.htecon.controls.IDataForm;
    import br.com.htecon.controls.cadastro.HtCadastroEdit;
    import br.com.htecon.events.HtDataFormFieldChanged;
    import br.com.htecon.util.StringUtil;
    import br.com.htecon.util.Util;
    
    import com.farata.validators.ValidationRule;
    
    import components.controllers.CadastroPessoaController;
    
    import data.Pessoa;
    
    import mx.core.Container;
    
    import org.swizframework.Swiz;
	
    public class CadastroPessoaClass extends HtCadastroEdit
    {

        public var forms:IDataForm;
		public var validationCpfcnpj:ValidationRule;

        public function CadastroPessoaClass()
        {
            super();
            controller = CadastroPessoaController(Swiz.getBean("cadastroPessoaController"));
        }
		

        private function get pessoa():Pessoa {
            return controller.entity as Pessoa;
        }
		
        override protected function antesSalvar():Boolean
        {
            var valid:Boolean = forms.isValid();
            if (!valid) {
                showErrosForm(forms);
            }

            return valid;
        }
		
        override protected function iniciaTela() : void {
			Container(parent).verticalScrollPosition = 0;
			forms.setFocus();
        }
		
		protected function validaNuCpfcnpj(value:Object):Boolean {
			if (pessoa == null) {
				return true;
			}
			if (Util.stringIsNull(pessoa.nuCpfcnpj)) {
				return true;
			}			
			var result:Boolean;
			
			if (pessoa.tpPessoa == "F") {
				validationCpfcnpj.errorMessage = "Cpf inválido.";
				result = Util.validCpf(pessoa.nuCpfcnpj);			
			} else {
				validationCpfcnpj.errorMessage = "Cnpj inválido.";
				result = Util.validCnpj(pessoa.nuCpfcnpj);
			}
			return result;
		}
		
		override protected function depoisNovo():void {
			super.depoisNovo();			
			pessoa.tpPessoa = "F";			
		}
		
		protected function forms_fieldChangedHandler(event:HtDataFormFieldChanged):void
		{
			if (event.formItem.dataField == "nuCpfcnpj") {
				if (!StringUtil.isEmpty(pessoa.nuCpfcnpj)) {
					CadastroPessoaController(controller).validaExistencianuCpfcnpj(pessoa.nuCpfcnpj);
				}
			}
		}
		

    }
}
