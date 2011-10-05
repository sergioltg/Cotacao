package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtSegmento")
public class Segmento extends ExEntity {

    @Id
    private Integer cdSegmento;

    @Column(length = 50)
    private String deSegmento;

    @Column(length = 1)
    private String flAtivo;

    public Integer getCdSegmento() {
        return cdSegmento;
    }

    public void setCdSegmento(Integer cdSegmento) {
        this.cdSegmento = cdSegmento;
    }

    public String getDeSegmento() {
        return deSegmento;
    }

    public void setDeSegmento(String deSegmento) {
        this.deSegmento = deSegmento;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

}
