package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Cotacaoempresa")]
  public class Cotacaoempresa extends HtEntity
  {

    public var cdCotacao:Integer;
    public var cdEmpresa:Integer;

    override public function getId() : String {
      return cdEmpresa + "";
    } 
  }
}
