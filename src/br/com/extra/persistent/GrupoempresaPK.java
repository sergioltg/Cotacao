package br.com.extra.persistent;

import java.io.Serializable;


public class GrupoempresaPK implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer cdGrupo;
	private Integer cdEmpresa;

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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((cdEmpresa == null) ? 0 : cdEmpresa.hashCode());
		result = prime * result + ((cdGrupo == null) ? 0 : cdGrupo.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GrupoempresaPK other = (GrupoempresaPK) obj;
		if (cdEmpresa == null) {
			if (other.cdEmpresa != null)
				return false;
		} else if (!cdEmpresa.equals(other.cdEmpresa))
			return false;
		if (cdGrupo == null) {
			if (other.cdGrupo != null)
				return false;
		} else if (!cdGrupo.equals(other.cdGrupo))
			return false;
		return true;
	}

}
