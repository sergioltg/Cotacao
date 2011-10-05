package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtEmbalagem")
public class Embalagem extends ExEntity {

    @Id
    private String sgEmbalagem;

    @Column(length = 30)
    private String nmEmbalagem;

    @Column(length = 1)
    private String flAtivo;

    public String getSgEmbalagem() {
        return sgEmbalagem;
    }

    public void setSgEmbalagem(String sgEmbalagem) {
        this.sgEmbalagem = sgEmbalagem;
    }

    public String getNmEmbalagem() {
        return nmEmbalagem;
    }

    public void setNmEmbalagem(String nmEmbalagem) {
        this.nmEmbalagem = nmEmbalagem;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

}
