package br.com.extra.persistent;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(GrupoempresaPK.class)
@Entity
@Table(name = "ecdtGrupoEmpresa")
public class Grupoempresa extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdGrupo;

    @Id
    private Integer cdEmpresa;

    @Column(length = 1)
    private String flPrincipal;

    public Integer getCdGrupo() {
        return cdGrupo;
    }

    public void setCdGrupo(Integer cdGrupo) {
        this.cdGrupo = cdGrupo;
    }

    public Integer getCdEmpresa() {
        return cdEmpresa;
    }

    public void setCdEmpresa(Integer cdEmpresa) {
        this.cdEmpresa = cdEmpresa;
    }

    public String getFlPrincipal() {
        return flPrincipal;
    }

    public void setFlPrincipal(String flPrincipal) {
        this.flPrincipal = flPrincipal;
    }

}
