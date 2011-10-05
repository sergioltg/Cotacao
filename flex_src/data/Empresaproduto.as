package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Empresaproduto")]
  public class Empresaproduto extends HtEntity
  {

    public var cdEmpresa:Integer;
    public var nuProduto:Integer;
    public var nuReferencia:String;

    override public function getId() : String {
      return nuProduto + "";
    } 
  }
}
