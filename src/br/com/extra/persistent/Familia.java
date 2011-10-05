package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtFamilia")
public class Familia extends ExEntity {

    @Id
    private String nuFamilia;

    @Column(length = 30)
    private String nmFamilia;

    @Column(length = 1)
    private String flAtivo;

    public String getNuFamilia() {
        return nuFamilia;
    }

    public void setNuFamilia(String nuFamilia) {
        this.nuFamilia = nuFamilia;
    }

    public String getNmFamilia() {
        return nmFamilia;
    }

    public void setNmFamilia(String nmFamilia) {
        this.nmFamilia = nmFamilia;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

}
