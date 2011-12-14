package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.extra.persistent.Segmento")]
  public class Segmento extends HtEntity
  {

    public var cdSegmento:String;
    public var deSegmento:String;
    public var flAtivo:String;

    override public function getId() : String {
      return cdSegmento + "";
    } 
  }
}
