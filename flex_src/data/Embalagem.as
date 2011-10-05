package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Embalagem")]
  public class Embalagem extends HtEntity
  {

    public var sgEmbalagem:String;
    public var nmEmbalagem:String;
    public var flAtivo:String;

    override public function getId() : String {
      return sgEmbalagem + "";
    } 
  }
}
