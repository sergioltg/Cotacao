package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Grupo")]
  public class Grupo extends HtEntity
  {

    public var cdGrupo:Integer;
    public var nmGrupo:String;

    override public function getId() : String {
      return cdGrupo + "";
    } 
  }
}
