package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Cotacaofornecedor")]
  public class Cotacaofornecedor extends HtEntity
  {

    public var cdCotacao:Integer;
    public var cdFornecedor:Integer;
    public var cdContato:Integer;
    public var deCondpagto:String;
    public var deObservacoes:String;
    public var dtEntrega:Date;
    public var vlPercdescontogeral:decimal;
    public var vlPercdespesaextra:decimal;

    override public function getId() : String {
      return cdCotacao + "";
    } 
  }
}
