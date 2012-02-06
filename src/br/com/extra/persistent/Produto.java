package br.com.extra.persistent;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.htecon.persistent.ExEntity;

@Entity
@Table(name = "ecdtProduto")
public class Produto extends ExEntity {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private Integer nuProduto;

    @Column(length = 50)
    private String nmProduto;

    @Column(length = 2)
    private String sgEmbalagem;

    @Column
    private Integer qtUnidadeembalagem;

    @Column(length = 2)
    private String sgMedida;

    @Column(length = 2)
    private String sgEmbalagemtransf;

    @Column
    private Integer qtUnidadeembalagemtransf;

    @Column(length = 8)
    private String nuFamilia;

    @Column(length = 1)
    private String flAtivo;

    @Column(length = 13)
    private String nuEanprincipal;

    @Column
    private Integer nuProdutocentralizador;

    @Column
    private Integer cdSegmento;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="cdSegmento",insertable=false,updatable=false)
    private Segmento segmento;    

    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="sgEmbalagem",insertable=false,updatable=false)
    private Embalagem embalagem;

    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="sgMedida",insertable=false,updatable=false)
    private Medida medida;

    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="nuFamilia",insertable=false,updatable=false)
    private Familia familia;

    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="nuProdutocentralizador",insertable=false,updatable=false)
    private Produto produtocentralizador;

    public Integer getNuProduto() {
        return nuProduto;
    }

    public void setNuProduto(Integer nuProduto) {
        this.nuProduto = nuProduto;
    }

    public String getNmProduto() {
        return nmProduto;
    }

    public void setNmProduto(String nmProduto) {
        this.nmProduto = nmProduto;
    }

    public String getSgEmbalagem() {
        return sgEmbalagem;
    }

    public void setSgEmbalagem(String sgEmbalagem) {
        this.sgEmbalagem = sgEmbalagem;
    }

    public Integer getQtUnidadeembalagem() {
        return qtUnidadeembalagem;
    }

    public void setQtUnidadeembalagem(Integer qtUnidadeembalagem) {
        this.qtUnidadeembalagem = qtUnidadeembalagem;
    }

    public String getSgMedida() {
        return sgMedida;
    }

    public void setSgMedida(String sgMedida) {
        this.sgMedida = sgMedida;
    }

    public String getSgEmbalagemtransf() {
        return sgEmbalagemtransf;
    }

    public void setSgEmbalagemtransf(String sgEmbalagemtransf) {
        this.sgEmbalagemtransf = sgEmbalagemtransf;
    }

    public Integer getQtUnidadeembalagemtransf() {
        return qtUnidadeembalagemtransf;
    }

    public void setQtUnidadeembalagemtransf(Integer qtUnidadeembalagemtransf) {
        this.qtUnidadeembalagemtransf = qtUnidadeembalagemtransf;
    }

    public String getNuFamilia() {
        return nuFamilia;
    }

    public void setNuFamilia(String nuFamilia) {
        this.nuFamilia = nuFamilia;
    }

    public String getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(String flAtivo) {
        this.flAtivo = flAtivo;
    }

    public String getNuEanprincipal() {
        return nuEanprincipal;
    }

    public void setNuEanprincipal(String nuEanprincipal) {
        this.nuEanprincipal = nuEanprincipal;
    }

    public Integer getNuProdutocentralizador() {
        return nuProdutocentralizador;
    }

    public void setNuProdutocentralizador(Integer nuProdutocentralizador) {
        this.nuProdutocentralizador = nuProdutocentralizador;
    }

    public Integer getCdSegmento() {
        return cdSegmento;
    }

    public void setCdSegmento(Integer cdSegmento) {
        this.cdSegmento = cdSegmento;
    }

    public Embalagem getEmbalagem() {
        return embalagem;
    }

    public void setEmbalagem(Embalagem embalagem) {
        this.embalagem = embalagem;
    }

    public Medida getMedida() {
        return medida;
    }

    public void setMedida(Medida medida) {
        this.medida = medida;
    }

    public Familia getFamilia() {
        return familia;
    }

    public void setFamilia(Familia familia) {
        this.familia = familia;
    }

    public Produto getProdutocentralizador() {
        return produtocentralizador;
    }

    public void setProdutocentralizador(Produto produtocentralizador) {
        this.produtocentralizador = produtocentralizador;
    }

	public Segmento getSegmento() {
		return segmento;
	}

	public void setSegmento(Segmento segmento) {
		this.segmento = segmento;
	}

}
