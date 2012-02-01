package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.extra.persistent.Cidade")]
  public class Cidade extends HtEntity
  {

    public var cdCidade:int;
    public var nmCidade:String;
    public var sgUf:String;

    override public function getId() : String {
      return cdCidade + "";
    } 
  }
}
