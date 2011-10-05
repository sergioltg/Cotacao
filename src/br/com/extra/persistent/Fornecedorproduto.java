package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(FornecedorprodutoPK.class)
@Entity
@Table(name = "ecdtFornecedorProduto")
public class Fornecedorproduto extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdFornecedor;

    @Id
    private Integer nuProduto;

    @Column(length = 1)
    private String flStatus;

    @Column(length = 13)
    private String nuReferencia;

    public Integer getCdFornecedor() {
        return cdFornecedor;
    }

    public void setCdFornecedor(Integer cdFornecedor) {
        this.cdFornecedor = cdFornecedor;
    }

    public Integer getNuProduto() {
        return nuProduto;
    }

    public void setNuProduto(Integer nuProduto) {
        this.nuProduto = nuProduto;
    }

    public String getFlStatus() {
        return flStatus;
    }

    public void setFlStatus(String flStatus) {
        this.flStatus = flStatus;
    }

    public String getNuReferencia() {
        return nuReferencia;
    }

    public void setNuReferencia(String nuReferencia) {
        this.nuReferencia = nuReferencia;
    }

}
