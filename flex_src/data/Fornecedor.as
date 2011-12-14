package data
{
  import br.com.htecon.data.HtEntity;
  
  import mx.collections.ArrayCollection;

  [Bindable]
  [RemoteClass(alias="br.com.extra.persistent.Fornecedor")]
  public class Fornecedor extends HtEntity
  {

    public var cdFornecedor:String;
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
	public var cdSegmento: String;
	
	public var cidade:Cidade;
	public var segmento:Segmento;
	
	public var contatos:ArrayCollection;

    override public function getId() : String {
      return cdFornecedor + "";
    }
	
	public function Fornecedor() {
		super();
		contatos = new ArrayCollection();
		
	}
	
  }
}
