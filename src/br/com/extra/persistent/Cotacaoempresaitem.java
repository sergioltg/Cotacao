package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(CotacaoempresaitemPK.class)
@Entity
@Table(name = "ecotCotacaoEmpresaItem")
public class Cotacaoempresaitem extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdEmpresa;

    @Id
    private Integer cdCotacao;

    @Id
    private Integer cdProduto;

    @Column(length = 2)
    private String sgEmbalagem;

    @Column
    private Integer qtUnidadeembalagem;

    @Column
    private Double qtSolicitada;

    @Column
    private Integer cdFornecedorfechado;

    public Integer getCdEmpresa() {
        return cdEmpresa;
    }

    public void setCdEmpresa(Integer cdEmpresa) {
        this.cdEmpresa = cdEmpresa;
    }

    public Integer getCdCotacao() {
        return cdCotacao;
    }

    public void setCdCotacao(Integer cdCotacao) {
        this.cdCotacao = cdCotacao;
    }

    public Integer getCdProduto() {
        return cdProduto;
    }

    public void setCdProduto(Integer cdProduto) {
        this.cdProduto = cdProduto;
    }

    public String getSgEmbalagem() {
        return sgEmbalagem;
    }

    public void setSgEmbalagem(String sgEmbalagem) {
        this.sgEmbalagem = sgEmbalagem;
    }

    public Integer getQtUnidadeembalagem() {
        return qtUnidadeembalagem;
    }

    public void setQtUnidadeembalagem(Integer qtUnidadeembalagem) {
        this.qtUnidadeembalagem = qtUnidadeembalagem;
    }

    public Double getQtSolicitada() {
        return qtSolicitada;
    }

    public void setQtSolicitada(Double qtSolicitada) {
        this.qtSolicitada = qtSolicitada;
    }

    public Integer getCdFornecedorfechado() {
        return cdFornecedorfechado;
    }

    public void setCdFornecedorfechado(Integer cdFornecedorfechado) {
        this.cdFornecedorfechado = cdFornecedorfechado;
    }

}
