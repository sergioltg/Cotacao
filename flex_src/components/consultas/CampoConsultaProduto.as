package components.consultas
{
    import br.com.htecon.controls.consulta.HtCampoConsulta;
    import br.com.htecon.controls.consulta.HtCampoConsultaItem;
    import br.com.htecon.delegate.IBasicDelegate;

    import data.Produto;

    import mx.controls.TextInput;
    import mx.core.ClassFactory;

    import org.swizframework.Swiz;

    import view.produto.ConsultaProdutoClass;

    public class CampoConsultaProduto extends HtCampoConsulta
    {

        public function CampoConsultaProduto()
        {
            super();

            var textInputnuProduto:TextInput = new TextInput();
            textInputnuProduto.width = 20;
            var camponuProduto:HtCampoConsultaItem = new HtCampoConsultaItem("nuProduto", textInputnuProduto);
            addField(camponuProduto);

            var textInputnmProduto:TextInput = new TextInput();
            textInputnmProduto.percentWidth = 100;
            var camponmProduto:HtCampoConsultaItem = new HtCampoConsultaItem("nmProduto", textInputnmProduto);
            addField(camponmProduto);

            var textInputsgEmbalagem:TextInput = new TextInput();
            textInputsgEmbalagem.percentWidth = 100;
            var camposgEmbalagem:HtCampoConsultaItem = new HtCampoConsultaItem("sgEmbalagem", textInputsgEmbalagem);
            addField(camposgEmbalagem);

            var textInputqtUnidadeembalagem:TextInput = new TextInput();
            textInputqtUnidadeembalagem.percentWidth = 100;
            var campoqtUnidadeembalagem:HtCampoConsultaItem = new HtCampoConsultaItem("qtUnidadeembalagem", textInputqtUnidadeembalagem);
            addField(campoqtUnidadeembalagem);

            var textInputsgMedida:TextInput = new TextInput();
            textInputsgMedida.percentWidth = 100;
            var camposgMedida:HtCampoConsultaItem = new HtCampoConsultaItem("sgMedida", textInputsgMedida);
            addField(camposgMedida);

            var textInputsgEmbalagemtransf:TextInput = new TextInput();
            textInputsgEmbalagemtransf.percentWidth = 100;
            var camposgEmbalagemtransf:HtCampoConsultaItem = new HtCampoConsultaItem("sgEmbalagemtransf", textInputsgEmbalagemtransf);
            addField(camposgEmbalagemtransf);

            var textInputqtUnidadeembalagemtransf:TextInput = new TextInput();
            textInputqtUnidadeembalagemtransf.percentWidth = 100;
            var campoqtUnidadeembalagemtransf:HtCampoConsultaItem = new HtCampoConsultaItem("qtUnidadeembalagemtransf", textInputqtUnidadeembalagemtransf);
            addField(campoqtUnidadeembalagemtransf);

            var textInputnuFamilia:TextInput = new TextInput();
            textInputnuFamilia.percentWidth = 100;
            var camponuFamilia:HtCampoConsultaItem = new HtCampoConsultaItem("nuFamilia", textInputnuFamilia);
            addField(camponuFamilia);

            var textInputflAtivo:TextInput = new TextInput();
            textInputflAtivo.percentWidth = 100;
            var campoflAtivo:HtCampoConsultaItem = new HtCampoConsultaItem("flAtivo", textInputflAtivo);
            addField(campoflAtivo);

            var textInputnuEanprincipal:TextInput = new TextInput();
            textInputnuEanprincipal.percentWidth = 100;
            var camponuEanprincipal:HtCampoConsultaItem = new HtCampoConsultaItem("nuEanprincipal", textInputnuEanprincipal);
            addField(camponuEanprincipal);

            var textInputnuProdutocentralizador:TextInput = new TextInput();
            textInputnuProdutocentralizador.percentWidth = 100;
            var camponuProdutocentralizador:HtCampoConsultaItem = new HtCampoConsultaItem("nuProdutocentralizador", textInputnuProdutocentralizador);
            addField(camponuProdutocentralizador);

            var textInputcdSegmento:TextInput = new TextInput();
            textInputcdSegmento.percentWidth = 100;
            var campocdSegmento:HtCampoConsultaItem = new HtCampoConsultaItem("cdSegmento", textInputcdSegmento);
            addField(campocdSegmento);


            fieldPK = camponuProduto;

            consultaGrid = ConsultaProdutoClass;

            basicDelegate = IBasicDelegate(Swiz.getBean("basicDelegate"));

            classFactoryfilter = new ClassFactory(Produto);

        }

    }
}
