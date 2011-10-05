package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Produto")]
  public class Produto extends HtEntity
  {

    public var nuProduto:Integer;
    public var nmProduto:String;
    public var sgEmbalagem:String;
    public var qtUnidadeembalagem:Integer;
    public var sgMedida:String;
    public var sgEmbalagemtransf:String;
    public var qtUnidadeembalagemtransf:Integer;
    public var nuFamilia:String;
    public var flAtivo:String;
    public var nuEanprincipal:String;
    public var nuProdutocentralizador:Integer;
    public var cdSegmento:Integer;

    override public function getId() : String {
      return nuProduto + "";
    } 
  }
}
