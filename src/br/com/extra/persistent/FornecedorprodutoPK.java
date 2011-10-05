package br.com.extra.persistent;

import java.io.Serializable;


public class FornecedorprodutoPK implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer cdFornecedor;
	private Integer nuProduto;

	public Integer getCdFornecedor() {
		return cdFornecedor;
	}

	public void setCdFornecedor(Integer cdFornecedor) {
		this.cdFornecedor = cdFornecedor;
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
				+ ((cdFornecedor == null) ? 0 : cdFornecedor.hashCode());
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
		FornecedorprodutoPK other = (FornecedorprodutoPK) obj;
		if (cdFornecedor == null) {
			if (other.cdFornecedor != null)
				return false;
		} else if (!cdFornecedor.equals(other.cdFornecedor))
			return false;
		if (nuProduto == null) {
			if (other.nuProduto != null)
				return false;
		} else if (!nuProduto.equals(other.nuProduto))
			return false;
		return true;
	}

}
