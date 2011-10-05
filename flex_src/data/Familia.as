package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Familia")]
  public class Familia extends HtEntity
  {

    public var nuFamilia:String;
    public var nmFamilia:String;
    public var flAtivo:String;

    override public function getId() : String {
      return nuFamilia + "";
    } 
  }
}
