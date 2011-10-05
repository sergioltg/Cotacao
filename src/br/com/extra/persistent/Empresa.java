package br.com.extra.persistent;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtEmpresa")
public class Empresa extends ExEntity {

    @Id
    private Integer cdEmpresa;

    @Column(length = 120)
    private String nmRazaosocial;

    @Column(length = 120)
    private String nmFantasia;

    @Column(length = 120)
    private String nmResponsavel;

    @Column(length = 14)
    private String nuCnpj;

    @Column(length = 400)
    private String nmEndereco;

    @Column(length = 400)
    private String nmBairro;

    @Column(length = 50)
    private String cdCidade;

    @Column(length = 2)
    private String sgUf;

    @Column(length = 20)
    private String nuTelefone;

    @Column(length = 100)
    private String deEmail;

    @Column(length = 1)
    private String flAtivo;

    @Column
    private Date dtExpiracao;

    @Column(length = 1)
    private String flNaoexpira;

    @Column(length = 1)
    private String flContratado;

    @Column
    private Double vlContrato;

    @Column(length = 1)
    private String flPendenteaprovacao;

    @Column
    private Integer cdSegmento;

    public Integer getCdEmpresa() {
        return cdEmpresa;
    }

    public void setCdEmpresa(Integer cdEmpresa) {
        this.cdEmpresa = cdEmpresa;
    }

    public String getNmRazaosocial() {
        return nmRazaosocial;
    }

    public void setNmRazaosocial(String nmRazaosocial) {
        this.nmRazaosocial = nmRazaosocial;
    }

    public String getNmFantasia() {
        return nmFantasia;
    }

    public void setNmFantasia(String nmFantasia) {
        this.nmFantasia = nmFantasia;
    }

    public String getNmResponsavel() {
        return nmResponsavel;
    }

    public void setNmResponsavel(String nmResponsavel) {
        this.nmResponsavel = nmResponsavel;
    }

    public String getNuCnpj() {
        return nuCnpj;
    }

    public void setNuCnpj(String nuCnpj) {
        this.nuCnpj = nuCnpj;
    }

    public String getNmEndereco() {
        return nmEndereco;
    }

    public void setNmEndereco(String nmEndereco) {
        this.nmEndereco = nmEndereco;
    }

    public String getNmBairro() {
        return nmBairro;
    }

    public void setNmBairro(String nmBairro) {
        this.nmBairro = nmBairro;
    }

    public String getCdCidade() {
        return cdCidade;
    }

    public void setCdCidade(String cdCidade) {
        this.cdCidade = cdCidade;
    }

    public String getSgUf() {
        return sgUf;
    }

    public void setSgUf(String sgUf) {
        this.sgUf = sgUf;
    }

    public String getNuTelefone() {
        return nuTelefone;
    }

    public void setNuTelefone(String nuTelefone) {
        this.nuTelefone = nuTelefone;
    }

    public String getDeEmail() {
        return deEmail;
    }

    public void setDeEmail(String deEmail) {
        this.deEmail = deEmail;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

    public Date getDtExpiracao() {
        return dtExpiracao;
    }

    public void setDtExpiracao(Date dtExpiracao) {
        this.dtExpiracao = dtExpiracao;
    }

    public String getFlNaoexpira() {
        return flNaoexpira;
    }

    public void setFlNaoexpira(String flNaoexpira) {
        this.flNaoexpira = flNaoexpira;
    }

    public String getFlContratado() {
        return flContratado;
    }

    public void setFlContratado(String flContratado) {
        this.flContratado = flContratado;
    }

    public Double getVlContrato() {
        return vlContrato;
    }

    public void setVlContrato(Double vlContrato) {
        this.vlContrato = vlContrato;
    }

    public String getFlPendenteaprovacao() {
        return flPendenteaprovacao;
    }

    public void setFlPendenteaprovacao(String flPendenteaprovacao) {
        this.flPendenteaprovacao = flPendenteaprovacao;
    }

    public Integer getCdSegmento() {
        return cdSegmento;
    }

    public void setCdSegmento(Integer cdSegmento) {
        this.cdSegmento = cdSegmento;
    }

}
