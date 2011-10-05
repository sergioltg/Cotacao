package data
{
  import br.com.htecon.data.HtEntity;

  [Bindable]
  [RemoteClass(alias="br.com.addo.persistent.Empresa")]
  public class Empresa extends HtEntity
  {

    public var cdEmpresa:Integer;
    public var nmRazaosocial:String;
    public var nmFantasia:String;
    public var nmResponsavel:String;
    public var nuCnpj:String;
    public var nmEndereco:String;
    public var nmBairro:String;
    public var cdCidade:String;
    public var sgUf:String;
    public var nuTelefone:String;
    public var deEmail:String;
    public var flAtivo:String;
    public var dtExpiracao:Date;
    public var flNaoexpira:String;
    public var flContratado:String;
    public var vlContrato:decimal;
    public var flPendenteaprovacao:String;
    public var cdSegmento:Integer;

    override public function getId() : String {
      return cdEmpresa + "";
    } 
  }
}
