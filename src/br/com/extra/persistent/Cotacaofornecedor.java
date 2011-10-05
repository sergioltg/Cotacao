package br.com.extra.persistent;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecotCotacaoFornecedor")
public class Cotacaofornecedor extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdCotacao;

    @Column
    private Integer cdFornecedor;

    @Column
    private Integer cdContato;

    @Column(length = 40)
    private String deCondpagto;

    @Column(length = 400)
    private String deObservacoes;

    @Column
    private Date dtEntrega;

    @Column
    private Double vlPercdescontogeral;

    @Column
    private Double vlPercdespesaextra;

    public Integer getCdCotacao() {
        return cdCotacao;
    }

    public void setCdCotacao(Integer cdCotacao) {
        this.cdCotacao = cdCotacao;
    }

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

    public String getDeCondpagto() {
        return deCondpagto;
    }

    public void setDeCondpagto(String deCondpagto) {
        this.deCondpagto = deCondpagto;
    }

    public String getDeObservacoes() {
        return deObservacoes;
    }

    public void setDeObservacoes(String deObservacoes) {
        this.deObservacoes = deObservacoes;
    }

    public Date getDtEntrega() {
        return dtEntrega;
    }

    public void setDtEntrega(Date dtEntrega) {
        this.dtEntrega = dtEntrega;
    }

    public Double getVlPercdescontogeral() {
        return vlPercdescontogeral;
    }

    public void setVlPercdescontogeral(Double vlPercdescontogeral) {
        this.vlPercdescontogeral = vlPercdescontogeral;
    }

    public Double getVlPercdespesaextra() {
        return vlPercdespesaextra;
    }

    public void setVlPercdespesaextra(Double vlPercdespesaextra) {
        this.vlPercdespesaextra = vlPercdespesaextra;
    }

}
