package br.com.extra.persistent;

import java.io.Serializable;

public class EmpresaprodutoPK implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer cdEmpresa;

    private Integer nuProduto;

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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((cdEmpresa == null) ? 0 : cdEmpresa.hashCode());
		result = prime * result
				+ ((nuProduto == null) ? 0 : nuProduto.hashCode());
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
		EmpresaprodutoPK other = (EmpresaprodutoPK) obj;
		if (cdEmpresa == null) {
			if (other.cdEmpresa != null)
				return false;
		} else if (!cdEmpresa.equals(other.cdEmpresa))
			return false;
		if (nuProduto == null) {
			if (other.nuProduto != null)
				return false;
		} else if (!nuProduto.equals(other.nuProduto))
			return false;
		return true;
	}   


}
