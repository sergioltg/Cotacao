package view.empresa
{
    import br.com.htecon.controller.HtDbController;
    import br.com.htecon.controller.events.HtControllerCallBackEvent;
    import br.com.htecon.controls.HtButtonBar;
    import br.com.htecon.controls.HtDataForm;
    import br.com.htecon.controls.cadastro.HtCadastroEdit;
    
    import components.InformacoesSistema;
    
    import data.Empresa;
    
    import flash.display.DisplayObject;
    
    import mx.controls.Alert;
    import mx.core.FlexGlobals;
    
    import view.produtoassociacao.ProdutoAssociacaoClass;
                                  
    public class CadastroEmpresaClass extends HtCadastroEdit
    {
		
		public static var BOTAO_ASSOCIACAOPRODUTOS:String = "ASSOCIACAOPRODUTOS";		

        public var dataForm:HtDataForm;

        public function CadastroEmpresaClass()
        {
            super();

            controller = new HtDbController(Empresa);
        }
		
		override protected function createChildren() : void {
			super.createChildren();
			
			buttonBar.addButtonDef({type:BOTAO_ASSOCIACAOPRODUTOS, label:"Produtos"});	
			
			buttonBar.buttons = [HtButtonBar.SAVE_BUTTON, HtButtonBar.DELETE_BUTTON, BOTAO_ASSOCIACAOPRODUTOS, HtButtonBar.BACK_BUTTON];
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
		
		override protected function trataBotao(button: String):void {
			super.trataBotao(button);
			switch (button)
			{
				case BOTAO_ASSOCIACAOPRODUTOS:
					ProdutoAssociacaoClass.open(FlexGlobals.topLevelApplication as DisplayObject, empresa.cdEmpresa + "", ProdutoAssociacaoClass.TYPE_EMPRESAS);
					break;				
			}			
		}
		

    }
}
