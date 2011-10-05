package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Fornecedorproduto")]
  public class Fornecedorproduto extends HtEntity
  {

    public var cdFornecedor:Integer;
    public var nuProduto:Integer;
    public var flStatus:String;
    public var nuReferencia:String;

    override public function getId() : String {
      return nuProduto + "";
    } 
  }
}
