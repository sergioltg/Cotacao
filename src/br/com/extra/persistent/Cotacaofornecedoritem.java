package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(CotacaofornecedoritemPK.class)
@Entity
@Table(name = "ecotCotacaoFornecedorItem")
public class Cotacaofornecedoritem extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdCotacao;

    @Id
    private Integer cdFornecedor;

    @Id
    private Integer cdProduto;

    @Column
    private Double vlPrecounitario;

    @Column
    private Double vlPercdesconto;

    @Column
    private Double vlPercipi;

    @Column
    private Double vlPrecofinal;

    @Column
    private Integer nuClassificacao;

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

    public Integer getCdProduto() {
        return cdProduto;
    }

    public void setCdProduto(Integer cdProduto) {
        this.cdProduto = cdProduto;
    }

    public Double getVlPrecounitario() {
        return vlPrecounitario;
    }

    public void setVlPrecounitario(Double vlPrecounitario) {
        this.vlPrecounitario = vlPrecounitario;
    }

    public Double getVlPercdesconto() {
        return vlPercdesconto;
    }

    public void setVlPercdesconto(Double vlPercdesconto) {
        this.vlPercdesconto = vlPercdesconto;
    }

    public Double getVlPercipi() {
        return vlPercipi;
    }

    public void setVlPercipi(Double vlPercipi) {
        this.vlPercipi = vlPercipi;
    }

    public Double getVlPrecofinal() {
        return vlPrecofinal;
    }

    public void setVlPrecofinal(Double vlPrecofinal) {
        this.vlPrecofinal = vlPrecofinal;
    }

    public Integer getNuClassificacao() {
        return nuClassificacao;
    }

    public void setNuClassificacao(Integer nuClassificacao) {
        this.nuClassificacao = nuClassificacao;
    }

}
