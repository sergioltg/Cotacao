package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Cotacaoempresaitem")]
  public class Cotacaoempresaitem extends HtEntity
  {

    public var cdEmpresa:Integer;
    public var cdCotacao:Integer;
    public var cdProduto:Integer;
    public var sgEmbalagem:String;
    public var qtUnidadeembalagem:Integer;
    public var qtSolicitada:decimal;
    public var cdFornecedorfechado:Integer;

    override public function getId() : String {
      return cdProduto + "";
    } 
  }
}
