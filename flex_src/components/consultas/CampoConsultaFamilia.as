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

            var textInputnuFamilia:TextInput = new TextInput();
            textInputnuFamilia.width = 20;
            var camponuFamilia:HtCampoConsultaItem = new HtCampoConsultaItem("nuFamilia", textInputnuFamilia);
            addField(camponuFamilia);

            var textInputnmFamilia:TextInput = new TextInput();
            textInputnmFamilia.percentWidth = 100;
            var camponmFamilia:HtCampoConsultaItem = new HtCampoConsultaItem("nmFamilia", textInputnmFamilia);
            addField(camponmFamilia);

            var textInputflAtivo:TextInput = new TextInput();
            textInputflAtivo.percentWidth = 100;
            var campoflAtivo:HtCampoConsultaItem = new HtCampoConsultaItem("flAtivo", textInputflAtivo);
            addField(campoflAtivo);


            fieldPK = camponuFamilia;

            consultaGrid = ConsultaFamiliaClass;

            basicDelegate = BasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Familia);

        }

    }
}
