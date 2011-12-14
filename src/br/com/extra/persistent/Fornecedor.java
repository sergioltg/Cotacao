package br.com.extra.persistent;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtFornecedor")
public class Fornecedor extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdFornecedor;

    @Column(length = 120)
    private String nmRazaosocial;

    @Column(length = 120)
    private String nmFantasia;

    @Column(length = 14)
    private String nuCnpj;

    @Column(length = 400)
    private String nmEndereco;

    @Column(length = 400)
    private String nmBairro;

    @Column(length = 50)
    private String cdCidade;

    @Column(length = 2)
    private String sgUf;

    @Column(length = 20)
    private String nuTelefone;

    @Column(length = 100)
    private String deEmail;

    @Column(length = 1)
    private String flAtivo;

    @Column(length = 1)
    private String flHabilitacotacao;
    
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "cdCidade", insertable = false, updatable = false)
	private Cidade cidade;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "cdSegmento", insertable = false, updatable = false)
	private Segmento segmento;
	
	@OneToMany
	@JoinColumn(name = "cdFornecedor", insertable = false, updatable = false)
	private List<Fornecedorcontato> contatos;	

    public Integer getCdFornecedor() {
        return cdFornecedor;
    }

    public void setCdFornecedor(Integer cdFornecedor) {
        this.cdFornecedor = cdFornecedor;
    }

    public String getNmRazaosocial() {
        return nmRazaosocial;
    }

    public void setNmRazaosocial(String nmRazaosocial) {
        this.nmRazaosocial = nmRazaosocial;
    }

    public String getNmFantasia() {
        return nmFantasia;
    }

    public void setNmFantasia(String nmFantasia) {
        this.nmFantasia = nmFantasia;
    }

    public String getNuCnpj() {
        return nuCnpj;
    }

    public void setNuCnpj(String nuCnpj) {
        this.nuCnpj = nuCnpj;
    }

    public String getNmEndereco() {
        return nmEndereco;
    }

    public void setNmEndereco(String nmEndereco) {
        this.nmEndereco = nmEndereco;
    }

    public String getNmBairro() {
        return nmBairro;
    }

    public void setNmBairro(String nmBairro) {
        this.nmBairro = nmBairro;
    }

    public String getCdCidade() {
        return cdCidade;
    }

    public void setCdCidade(String cdCidade) {
        this.cdCidade = cdCidade;
    }

    public String getSgUf() {
        return sgUf;
    }

    public void setSgUf(String sgUf) {
        this.sgUf = sgUf;
    }

    public String getNuTelefone() {
        return nuTelefone;
    }

    public void setNuTelefone(String nuTelefone) {
        this.nuTelefone = nuTelefone;
    }

    public String getDeEmail() {
        return deEmail;
    }

    public void setDeEmail(String deEmail) {
        this.deEmail = deEmail;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

    public String getFlHabilitacotacao() {
        return flHabilitacotacao;
    }

    public void setFlHabilitacotacao(String flHabilitacotacao) {
        this.flHabilitacotacao = flHabilitacotacao;
    }

	public Cidade getCidade() {
		return cidade;
	}

	public void setCidade(Cidade cidade) {
		this.cidade = cidade;
	}

	public void setSegmento(Segmento segmento) {
		this.segmento = segmento;
	}

	public Segmento getSegmento() {
		return segmento;
	}

	public void setContatos(List<Fornecedorcontato> contatos) {
		this.contatos = contatos;
	}

	public List<Fornecedorcontato> getContatos() {
		return contatos;
	}

}
