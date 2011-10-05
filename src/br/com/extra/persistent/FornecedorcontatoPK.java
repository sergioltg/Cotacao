package br.com.extra.persistent;

import java.io.Serializable;


public class FornecedorcontatoPK implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer cdFornecedor;
    private Integer cdContato;
	public Integer getCdFornecedor() {
		return cdFornecedor;
	}
	public void setCdFornecedor(Integer cdFornecedor) {
		this.cdFornecedor = cdFornecedor;
	}
	public Integer getCdContato() {
		return cdContato;
	}
	public void setCdContato(Integer cdContato) {
		this.cdContato = cdContato;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((cdContato == null) ? 0 : cdContato.hashCode());
		result = prime * result
				+ ((cdFornecedor == null) ? 0 : cdFornecedor.hashCode());
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
		FornecedorcontatoPK other = (FornecedorcontatoPK) obj;
		if (cdContato == null) {
			if (other.cdContato != null)
				return false;
		} else if (!cdContato.equals(other.cdContato))
			return false;
		if (cdFornecedor == null) {
			if (other.cdFornecedor != null)
				return false;
		} else if (!cdFornecedor.equals(other.cdFornecedor))
			return false;
		return true;
	}


}
