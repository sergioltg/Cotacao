package components.consultas
{
    import br.com.htecon.controls.consulta.HtCampoConsulta;
    import br.com.htecon.controls.consulta.HtCampoConsultaItem;
    import br.com.htecon.delegate.BasicDelegate;
    
    import data.Segmento;
    
    import mx.controls.TextInput;
    import mx.core.ClassFactory;
    
    import org.swizframework.Swiz;
    
    import view.segmento.ConsultaSegmentoClass;

    public class CampoConsultaSegmento extends HtCampoConsulta
    {

        public function CampoConsultaSegmento()
        {
            super();

            var textInputcdSegmento:TextInput = new TextInput();
            textInputcdSegmento.width = 20;
            var campocdSegmento:HtCampoConsultaItem = new HtCampoConsultaItem("cdSegmento", textInputcdSegmento);
            addField(campocdSegmento);

            var textInputdeSegmento:TextInput = new TextInput();
            textInputdeSegmento.percentWidth = 100;
            var campodeSegmento:HtCampoConsultaItem = new HtCampoConsultaItem("deSegmento", textInputdeSegmento);
            addField(campodeSegmento);

            fieldPK = campocdSegmento;

            consultaGrid = ConsultaSegmentoClass;

            basicDelegate = BasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Segmento);

        }

    }
}
