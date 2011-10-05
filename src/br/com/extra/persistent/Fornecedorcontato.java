package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(FornecedorcontatoPK.class)
@Entity
@Table(name = "ecdtFornecedorContato")
public class Fornecedorcontato extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdFornecedor;

    @Id
    private Integer cdContato;

    @Column(length = 120)
    private String nmContato;

    @Column(length = 30)
    private String deLogin;

    @Column(length = 30)
    private String deSenha;

    @Column(length = 14)
    private String nuCnpj;

    @Column(length = 50)
    private String cdCidade;

    @Column(length = 20)
    private String nuTelefone;

    @Column(length = 100)
    private String deEmail;

    @Column(length = 1)
    private String flAtivo;

    @Column(length = 1)
    private String flHabilitacotacao;

    @Column(length = 400)
    private String deObservacoes;

    public Integer getCdFornecedor() {
        return cdFornecedor;
    }

    public void setCdFornecedor(Integer cdFornecedor) {
        this.cdFornecedor = cdFornecedor;
    }

    public Integer getCdContato() {
        return cdContato;
    }

    public void setCdContato(Integer cdContato) {
        this.cdContato = cdContato;
    }

    public String getNmContato() {
        return nmContato;
    }

    public void setNmContato(String nmContato) {
        this.nmContato = nmContato;
    }

    public String getDeLogin() {
        return deLogin;
    }

    public void setDeLogin(String deLogin) {
        this.deLogin = deLogin;
    }

    public String getDeSenha() {
        return deSenha;
    }

    public void setDeSenha(String deSenha) {
        this.deSenha = deSenha;
    }

    public String getNuCnpj() {
        return nuCnpj;
    }

    public void setNuCnpj(String nuCnpj) {
        this.nuCnpj = nuCnpj;
    }

    public String getCdCidade() {
        return cdCidade;
    }

    public void setCdCidade(String cdCidade) {
        this.cdCidade = cdCidade;
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

    public String getDeObservacoes() {
        return deObservacoes;
    }

    public void setDeObservacoes(String deObservacoes) {
        this.deObservacoes = deObservacoes;
    }

}
