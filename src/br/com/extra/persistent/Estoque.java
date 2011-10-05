package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(EstoquePK.class)
@Entity
@Table(name = "ecdtEstoque")
public class Estoque extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdEmpresa;

    @Id
    private Integer nuProduto;

    @Column
    private Double vlPreco;

    @Column
    private Double vlPercmargemlucro;

    @Column
    private Double vlCustounit;

    @Column
    private Double vlCustomedio;

    @Column(length = 1)
    private String flAtivo;

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

    public Double getVlPreco() {
        return vlPreco;
    }

    public void setVlPreco(Double vlPreco) {
        this.vlPreco = vlPreco;
    }

    public Double getVlPercmargemlucro() {
        return vlPercmargemlucro;
    }

    public void setVlPercmargemlucro(Double vlPercmargemlucro) {
        this.vlPercmargemlucro = vlPercmargemlucro;
    }

    public Double getVlCustounit() {
        return vlCustounit;
    }

    public void setVlCustounit(Double vlCustounit) {
        this.vlCustounit = vlCustounit;
    }

    public Double getVlCustomedio() {
        return vlCustomedio;
    }

    public void setVlCustomedio(Double vlCustomedio) {
        this.vlCustomedio = vlCustomedio;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

}
