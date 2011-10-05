package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(EmpresaprodutoPK.class)
@Entity
@Table(name = "ecdtEmpresaProduto")
public class Empresaproduto extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdEmpresa;

    @Id
    private Integer nuProduto;

    @Column(length = 13)
    private String nuReferencia;

    public Integer getCdEmpresa() {
        return cdEmpresa;
    }

    public void setCdEmpresa(Integer cdEmpresa) {
        this.cdEmpresa = cdEmpresa;
    }

    public Integer getNuProduto() {
        return nuProduto;
    }

    public void setNuProduto(Integer nuProduto) {
        this.nuProduto = nuProduto;
    }

    public String getNuReferencia() {
        return nuReferencia;
    }

    public void setNuReferencia(String nuReferencia) {
        this.nuReferencia = nuReferencia;
    }

}
