package components.consultas
{
    import br.com.htecon.controls.consulta.HtCampoConsulta;
    import br.com.htecon.controls.consulta.HtCampoConsultaItem;
    import br.com.htecon.delegate.IBasicDelegate;

    import data.Grupo;

    import mx.controls.TextInput;
    import mx.core.ClassFactory;

    import org.swizframework.Swiz;

    import view.grupo.ConsultaGrupoClass;

    public class CampoConsultaGrupo extends HtCampoConsulta
    {

        public function CampoConsultaGrupo()
        {
            super();

            var textInputcdGrupo:TextInput = new TextInput();
            textInputcdGrupo.width = 20;
            var campocdGrupo:HtCampoConsultaItem = new HtCampoConsultaItem("cdGrupo", textInputcdGrupo);
            addField(campocdGrupo);

            var textInputnmGrupo:TextInput = new TextInput();
            textInputnmGrupo.percentWidth = 100;
            var camponmGrupo:HtCampoConsultaItem = new HtCampoConsultaItem("nmGrupo", textInputnmGrupo);
            addField(camponmGrupo);


            fieldPK = campocdGrupo;

            consultaGrid = ConsultaGrupoClass;

            basicDelegate = IBasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Grupo);

        }

    }
}
