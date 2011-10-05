package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Cotacao")]
  public class Cotacao extends HtEntity
  {

    public var cdCotacao:int;
    public var dtCotacao:Date;
    public var dtInclusao:Date;
    public var cdEmpresa:int;
    public var cdUsuario:int;
    public var flEncerramento:String;
    public var flLiberacotacao:String;
    public var dtCotacaofim:Date;
    public var hrCotacao:Date;
    public var hrCotacaofim:Date;
    public var flPedidoliberado:String;

    override public function getId() : String {
      return cdCotacao + "";
    } 
  }
}
