package components.consultas
{
    import br.com.htecon.controls.consulta.HtCampoConsulta;
    import br.com.htecon.controls.consulta.HtCampoConsultaItem;
    import br.com.htecon.delegate.BasicDelegate;

    import data.Familia;

    import mx.controls.TextInput;
    import mx.core.ClassFactory;

    import org.swizframework.Swiz;

    import view.familia.ConsultaFamiliaClass;

    public class CampoConsultaFamilia extends HtCampoConsulta
    {

        public function CampoConsultaFamilia()
        {
            super();


            fieldPK = camponuFamilia;

            consultaGrid = ConsultaFamiliaClass;

            basicDelegate = BasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Familia);

        }

    }
}
