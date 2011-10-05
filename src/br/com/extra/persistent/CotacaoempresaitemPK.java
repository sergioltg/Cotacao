package br.com.extra.persistent;

import java.io.Serializable;


public class CotacaoempresaitemPK implements Serializable  {

    private Integer cdEmpresa;
    private Integer cdCotacao;
    private Integer cdProduto;
	public Integer getCdEmpresa() {
		return cdEmpresa;
	}
	public void setCdEmpresa(Integer cdEmpresa) {
		this.cdEmpresa = cdEmpresa;
	}
	public Integer getCdCotacao() {
		return cdCotacao;
	}
	public void setCdCotacao(Integer cdCotacao) {
		this.cdCotacao = cdCotacao;
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
				+ ((cdEmpresa == null) ? 0 : cdEmpresa.hashCode());
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
		CotacaoempresaitemPK other = (CotacaoempresaitemPK) obj;
		if (cdCotacao == null) {
			if (other.cdCotacao != null)
				return false;
		} else if (!cdCotacao.equals(other.cdCotacao))
			return false;
		if (cdEmpresa == null) {
			if (other.cdEmpresa != null)
				return false;
		} else if (!cdEmpresa.equals(other.cdEmpresa))
			return false;
		if (cdProduto == null) {
			if (other.cdProduto != null)
				return false;
		} else if (!cdProduto.equals(other.cdProduto))
			return false;
		return true;
	}
    
    


}
