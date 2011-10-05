package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtMedida")
public class Medida extends ExEntity {

    @Id
    private String sgMedida;

    @Column(length = 30)
    private String nmMedida;

    @Column(length = 1)
    private String flAtivo;

    public String getSgMedida() {
        return sgMedida;
    }

    public void setSgMedida(String sgMedida) {
        this.sgMedida = sgMedida;
    }

    public String getNmMedida() {
        return nmMedida;
    }

    public void setNmMedida(String nmMedida) {
        this.nmMedida = nmMedida;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

}
