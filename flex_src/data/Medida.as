package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.extra.persistent.Medida")]
  public class Medida extends HtEntity
  {

    public var sgMedida:String;
    public var nmMedida:String;
    public var flAtivo:String;

    override public function getId() : String {
      return sgMedida + "";
    } 
  }
}
