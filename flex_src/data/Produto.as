package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.extra.persistent.Produto")]
  public class Produto extends HtEntity
  {

    public var nuProduto:String;
    public var nmProduto:String;
    public var sgEmbalagem:String;
    public var qtUnidadeembalagem:String;
    public var sgMedida:String;
    public var sgEmbalagemtransf:String;
    public var qtUnidadeembalagemtransf:String;
    public var nuFamilia:String;
    public var flAtivo:String;
    public var nuEanprincipal:String;
    public var nuProdutocentralizador:String;
    public var cdSegmento:String;

    override public function getId() : String {
      return nuProduto + "";
    } 
  }
}
