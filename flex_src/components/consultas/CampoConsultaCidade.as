package components.consultas
{
    import br.com.htecon.controls.consulta.HtCampoConsulta;
    import br.com.htecon.controls.consulta.HtCampoConsultaItem;
    import br.com.htecon.delegate.BasicDelegate;
    
    import data.Cidade;
    
    import mx.controls.TextInput;
    import mx.core.ClassFactory;
    
    import org.swizframework.Swiz;
    
    import view.cidade.ConsultaCidadeClass;

    public class CampoConsultaCidade extends HtCampoConsulta
    {

        public function CampoConsultaCidade()
        {
            super();

            var textInputcdCidade:TextInput = new TextInput();
            textInputcdCidade.width = 40;
            var campocdCidade:HtCampoConsultaItem = new HtCampoConsultaItem("cdCidade", textInputcdCidade);
            addField(campocdCidade);

            var textInputnmCidade:TextInput = new TextInput();
            textInputnmCidade.percentWidth = 100;
            var camponmCidade:HtCampoConsultaItem = new HtCampoConsultaItem("nmCidade", textInputnmCidade);
            addField(camponmCidade);
			
			var textInputsgUF:TextInput = new TextInput();
			textInputsgUF.width = 30;
			textInputsgUF.maxChars = 2;
			var camposgUF:HtCampoConsultaItem = new HtCampoConsultaItem("sgUf", textInputsgUF);
			addField(camposgUF);

            fieldPK = campocdCidade;

            consultaGrid = ConsultaCidadeClass;

            basicDelegate = BasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Cidade);

        }

    }
}
