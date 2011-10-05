package br.com.extra.persistent;

import java.io.Serializable;


public class CotacaofornecedoritemPK implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer cdCotacao;

    private Integer cdFornecedor;

    private Integer cdProduto;

	public Integer getCdCotacao() {
		return cdCotacao;
	}

	public void setCdCotacao(Integer cdCotacao) {
		this.cdCotacao = cdCotacao;
	}

	public Integer getCdFornecedor() {
		return cdFornecedor;
	}

	public void setCdFornecedor(Integer cdFornecedor) {
		this.cdFornecedor = cdFornecedor;
	}

	public Integer getCdProduto() {
		return cdProduto;
	}

	public void setCdProduto(Integer cdProduto) {
		this.cdProduto = cdProduto;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((cdCotacao == null) ? 0 : cdCotacao.hashCode());
		result = prime * result
				+ ((cdFornecedor == null) ? 0 : cdFornecedor.hashCode());
		result = prime * result
				+ ((cdProduto == null) ? 0 : cdProduto.hashCode());
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
		CotacaofornecedoritemPK other = (CotacaofornecedoritemPK) obj;
		if (cdCotacao == null) {
			if (other.cdCotacao != null)
				return false;
		} else if (!cdCotacao.equals(other.cdCotacao))
			return false;
		if (cdFornecedor == null) {
			if (other.cdFornecedor != null)
				return false;
		} else if (!cdFornecedor.equals(other.cdFornecedor))
			return false;
		if (cdProduto == null) {
			if (other.cdProduto != null)
				return false;
		} else if (!cdProduto.equals(other.cdProduto))
			return false;
		return true;
	}

    

}
