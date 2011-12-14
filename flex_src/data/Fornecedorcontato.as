package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.extra.persistent.Fornecedorcontato")]
  public class Fornecedorcontato extends HtEntity
  {

    public var cdFornecedor:String;
    public var cdContato:int;
    public var nmContato:String;
    public var deLogin:String;
    public var deSenha:String;
    public var nuCnpj:String;
    public var cdCidade:String;
    public var nuTelefone:String;
    public var deEmail:String;
    public var flAtivo:String;
    public var flHabilitacotacao:String;
    public var deObservacoes:String;
	
	public var cidade:Cidade;

    override public function getId() : String {
      return cdContato + "";
    } 
  }
}
