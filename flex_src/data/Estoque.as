package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Estoque")]
  public class Estoque extends HtEntity
  {
	  

    public var cdEmpresa:Integer;
    public var nuProduto:Integer;
    public var vlPreco:decimal;
    public var vlPercmargemlucro:decimal;
    public var vlCustounit:decimal;
    public var vlCustomedio:decimal;
    public var flAtivo:String;

    override public function getId() : String {
      return nuProduto + "";
    } 
  }
}
