package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Grupoempresa")]
  public class Grupoempresa extends HtEntity
  {

    public var cdGrupo:Integer;
    public var cdEmpresa:Integer;
    public var flPrincipal:String;

    override public function getId() : String {
      return cdEmpresa + "";
    } 
  }
}
