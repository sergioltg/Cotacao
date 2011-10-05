package br.com.extra.persistent;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@IdClass(CotacaoempresaPK.class)
@Entity
@Table(name = "ecotCotacaoEmpresa")
public class Cotacaoempresa extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer cdCotacao;

    @Id
    private Integer cdEmpresa;

    public Integer getCdCotacao() {
        return cdCotacao;
    }

    public void setCdCotacao(Integer cdCotacao) {
        this.cdCotacao = cdCotacao;
    }

    public Integer getCdEmpresa() {
        return cdEmpresa;
    }

    public void setCdEmpresa(Integer cdEmpresa) {
        this.cdEmpresa = cdEmpresa;
    }

}
