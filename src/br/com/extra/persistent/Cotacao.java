package br.com.extra.persistent;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecotCotacao")
public class Cotacao extends ExEntity {

    @Id
    private Integer cdCotacao;

    @Column
    private Date dtCotacao;

    @Column
    private Date dtInclusao;

    @Column
    private Integer cdEmpresa;

    @Column
    private Integer cdUsuario;

    @Column(length = 1)
    private String flEncerramento;

    @Column(length = 1)
    private String flLiberacotacao;

    @Column
    private Date dtCotacaofim;

    @Column
    private Date hrCotacao;

    @Column
    private Date hrCotacaofim;

    @Column(length = 1)
    private String flPedidoliberado;

    public Integer getCdCotacao() {
        return cdCotacao;
    }

    public void setCdCotacao(Integer cdCotacao) {
        this.cdCotacao = cdCotacao;
    }

    public Date getDtCotacao() {
        return dtCotacao;
    }

    public void setDtCotacao(Date dtCotacao) {
        this.dtCotacao = dtCotacao;
    }

    public Date getDtInclusao() {
        return dtInclusao;
    }

    public void setDtInclusao(Date dtInclusao) {
        this.dtInclusao = dtInclusao;
    }

    public Integer getCdEmpresa() {
        return cdEmpresa;
    }

    public void setCdEmpresa(Integer cdEmpresa) {
        this.cdEmpresa = cdEmpresa;
    }

    public Integer getCdUsuario() {
        return cdUsuario;
    }

    public void setCdUsuario(Integer cdUsuario) {
        this.cdUsuario = cdUsuario;
    }

    public String getFlEncerramento() {
        return flEncerramento;
    }

    public void setFlEncerramento(String flEncerramento) {
        this.flEncerramento = flEncerramento;
    }

    public String getFlLiberacotacao() {
        return flLiberacotacao;
    }

    public void setFlLiberacotacao(String flLiberacotacao) {
        this.flLiberacotacao = flLiberacotacao;
    }

    public Date getDtCotacaofim() {
        return dtCotacaofim;
    }

    public void setDtCotacaofim(Date dtCotacaofim) {
        this.dtCotacaofim = dtCotacaofim;
    }

    public Date getHrCotacao() {
        return hrCotacao;
    }

    public void setHrCotacao(Date hrCotacao) {
        this.hrCotacao = hrCotacao;
    }

    public Date getHrCotacaofim() {
        return hrCotacaofim;
    }

    public void setHrCotacaofim(Date hrCotacaofim) {
        this.hrCotacaofim = hrCotacaofim;
    }

    public String getFlPedidoliberado() {
        return flPedidoliberado;
    }

    public void setFlPedidoliberado(String flPedidoliberado) {
        this.flPedidoliberado = flPedidoliberado;
    }

}
