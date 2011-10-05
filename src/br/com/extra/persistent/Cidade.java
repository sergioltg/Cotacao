package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtCidade")
public class Cidade extends ExEntity {
	//sergio

    @Id
    private Integer cdCidade;

    @Column(length = 100)
    private String nmCidade;

    @Column(length = 2)
    private String sgUf;

    public Integer getCdCidade() {
        return cdCidade;
    }

	public void setCdCidade(Integer cdCidade) {
        this.cdCidade = cdCidade;
    }

    public String getNmCidade() {
        return nmCidade;
    }

    public void setNmCidade(String nmCidade) {
        this.nmCidade = nmCidade;
    }

    public String getSgUf() {
        return sgUf;
    }

    public void setSgUf(String sgUf) {
        this.sgUf = sgUf;
    }

}
