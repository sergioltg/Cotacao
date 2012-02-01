package components.consultas
{
    import br.com.htecon.controls.consulta.HtCampoConsulta;
    import br.com.htecon.controls.consulta.HtCampoConsultaItem;
    import br.com.htecon.delegate.BasicDelegate;

    import data.Embalagem;

    import mx.controls.TextInput;
    import mx.core.ClassFactory;

    import org.swizframework.Swiz;

    import view.embalagem.ConsultaEmbalagemClass;

    public class CampoConsultaEmbalagem extends HtCampoConsulta
    {

        public function CampoConsultaEmbalagem()
        {
            super();


            fieldPK = camposgEmbalagem;

            consultaGrid = ConsultaEmbalagemClass;

            basicDelegate = BasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Embalagem);

        }

    }
}
