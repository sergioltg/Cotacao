package components.consultas
{
    import br.com.htecon.controls.consulta.HtCampoConsulta;
    import br.com.htecon.controls.consulta.HtCampoConsultaItem;
    import br.com.htecon.delegate.BasicDelegate;

    import data.Medida;

    import mx.controls.TextInput;
    import mx.core.ClassFactory;

    import org.swizframework.Swiz;

    import view.medida.ConsultaMedidaClass;

    public class CampoConsultaMedida extends HtCampoConsulta
    {

        public function CampoConsultaMedida()
        {
            super();

            var textInputsgMedida:TextInput = new TextInput();
            textInputsgMedida.width = 20;
            var camposgMedida:HtCampoConsultaItem = new HtCampoConsultaItem("sgMedida", textInputsgMedida);
            addField(camposgMedida);

            var textInputnmMedida:TextInput = new TextInput();
            textInputnmMedida.percentWidth = 100;
            var camponmMedida:HtCampoConsultaItem = new HtCampoConsultaItem("nmMedida", textInputnmMedida);
            addField(camponmMedida);

            var textInputflAtivo:TextInput = new TextInput();
            textInputflAtivo.percentWidth = 100;
            var campoflAtivo:HtCampoConsultaItem = new HtCampoConsultaItem("flAtivo", textInputflAtivo);
            addField(campoflAtivo);


            fieldPK = camposgMedida;

            consultaGrid = ConsultaMedidaClass;

            basicDelegate = BasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Medida);

        }

    }
}
