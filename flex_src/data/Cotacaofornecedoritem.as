package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Cotacaofornecedoritem")]
  public class Cotacaofornecedoritem extends HtEntity
  {

    public var cdCotacao:Integer;
    public var cdFornecedor:Integer;
    public var cdProduto:Integer;
    public var vlPrecounitario:decimal;
    public var vlPercdesconto:decimal;
    public var vlPercipi:decimal;
    public var vlPrecofinal:decimal;
    public var nuClassificacao:Integer;

    override public function getId() : String {
      return cdProduto + "";
    } 
  }
}
