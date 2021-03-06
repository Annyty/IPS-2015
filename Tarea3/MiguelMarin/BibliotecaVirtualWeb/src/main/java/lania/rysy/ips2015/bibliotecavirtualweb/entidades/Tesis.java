/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lania.rysy.ips2015.bibliotecavirtualweb.entidades;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author miguel
 */
@Entity
@Table(name = "TESIS")
@NamedQueries({
    @NamedQuery(name = "Tesis.findAll", query = "SELECT t FROM Tesis t")})
public class Tesis implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "IDTESIS")
    private Integer idtesis;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "TITULO")
    private String titulo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "AUTOR_TESIS")
    private String autorTesis;
    @Column(name = "GRADO_OBTENIDO")
    private Integer gradoObtenido;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ANIO_TITULACION")
    private int anioTitulacion;
    @Column(name = "IDINSTITUCION_ADSCRIPCION")
    private Integer idinstitucionAdscripcion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 70)
    @Column(name = "DIRECTOR_TESIS")
    private String directorTesis;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "CONDICION_SITIO")
    private String condicionSitio;
    @Column(name = "IDESTADO")
    private Integer idestado;
    @Basic(optional = false)
    @NotNull
    @Column(name = "IDDISCIPLINA")
    private int iddisciplina;
    @Column(name = "IDSUBDISCIPLINA")
    private Integer idsubdisciplina;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ARCHIVO_TESIS")
    private String archivoTesis;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ESTATUS")
    private int estatus;
    @Basic(optional = false)
    @NotNull
    @Column(name = "FECHA_REG")
    @Temporal(TemporalType.DATE)
    private Date fechaReg;

    public Tesis() {
    }

    public Tesis(Integer idtesis) {
        this.idtesis = idtesis;
    }

    public Tesis(Integer idtesis, String titulo, String autorTesis, int anioTitulacion, String directorTesis, String condicionSitio, int iddisciplina, String archivoTesis, int estatus, Date fechaReg) {
        this.idtesis = idtesis;
        this.titulo = titulo;
        this.autorTesis = autorTesis;
        this.anioTitulacion = anioTitulacion;
        this.directorTesis = directorTesis;
        this.condicionSitio = condicionSitio;
        this.iddisciplina = iddisciplina;
        this.archivoTesis = archivoTesis;
        this.estatus = estatus;
        this.fechaReg = fechaReg;
    }

    public Integer getIdtesis() {
        return idtesis;
    }

    public void setIdtesis(Integer idtesis) {
        this.idtesis = idtesis;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutorTesis() {
        return autorTesis;
    }

    public void setAutorTesis(String autorTesis) {
        this.autorTesis = autorTesis;
    }

    public Integer getGradoObtenido() {
        return gradoObtenido;
    }

    public void setGradoObtenido(Integer gradoObtenido) {
        this.gradoObtenido = gradoObtenido;
    }

    public int getAnioTitulacion() {
        return anioTitulacion;
    }

    public void setAnioTitulacion(int anioTitulacion) {
        this.anioTitulacion = anioTitulacion;
    }

    public Integer getIdinstitucionAdscripcion() {
        return idinstitucionAdscripcion;
    }

    public void setIdinstitucionAdscripcion(Integer idinstitucionAdscripcion) {
        this.idinstitucionAdscripcion = idinstitucionAdscripcion;
    }

    public String getDirectorTesis() {
        return directorTesis;
    }

    public void setDirectorTesis(String directorTesis) {
        this.directorTesis = directorTesis;
    }

    public String getCondicionSitio() {
        return condicionSitio;
    }

    public void setCondicionSitio(String condicionSitio) {
        this.condicionSitio = condicionSitio;
    }

    public Integer getIdestado() {
        return idestado;
    }

    public void setIdestado(Integer idestado) {
        this.idestado = idestado;
    }

    public int getIddisciplina() {
        return iddisciplina;
    }

    public void setIddisciplina(int iddisciplina) {
        this.iddisciplina = iddisciplina;
    }

    public Integer getIdsubdisciplina() {
        return idsubdisciplina;
    }

    public void setIdsubdisciplina(Integer idsubdisciplina) {
        this.idsubdisciplina = idsubdisciplina;
    }

    public String getArchivoTesis() {
        return archivoTesis;
    }

    public void setArchivoTesis(String archivoTesis) {
        this.archivoTesis = archivoTesis;
    }

    public int getEstatus() {
        return estatus;
    }

    public void setEstatus(int estatus) {
        this.estatus = estatus;
    }

    public Date getFechaReg() {
        return fechaReg;
    }

    public void setFechaReg(Date fechaReg) {
        this.fechaReg = fechaReg;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idtesis != null ? idtesis.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tesis)) {
            return false;
        }
        Tesis other = (Tesis) object;
        if ((this.idtesis == null && other.idtesis != null) || (this.idtesis != null && !this.idtesis.equals(other.idtesis))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "lania.rysy.ips2015.bibliotecavirtualweb.entidades.Tesis[ idtesis=" + idtesis + " ]";
    }
    
}
