package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Fornecedor")]
  public class Fornecedor extends HtEntity
  {

    public var cdFornecedor:Integer;
    public var nmRazaosocial:String;
    public var nmFantasia:String;
    public var nuCnpj:String;
    public var nmEndereco:String;
    public var nmBairro:String;
    public var cdCidade:String;
    public var sgUf:String;
    public var nuTelefone:String;
    public var deEmail:String;
    public var flAtivo:String;
    public var flHabilitacotacao:String;

    override public function getId() : String {
      return cdFornecedor + "";
    } 
  }
}
