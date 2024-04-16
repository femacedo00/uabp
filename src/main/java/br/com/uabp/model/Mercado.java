package br.com.uabp.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Mercado{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long cnpj;

    // private String itensMercado;
    private String nome;
    private String rua;
    private String cep;

    @OneToMany(mappedBy = "mercado")
    private List<PrecoMercado> precoMercado;

    public Long getCnpj() {
        return cnpj;
    }
    public void setCnpj(Long cnpj) {
        this.cnpj = cnpj;
    }
    public List<PrecoMercado> getPrecoMercado() {
        return precoMercado;
    }
    public void setPrecoMercado(List<PrecoMercado> precoMercado) {
        this.precoMercado = precoMercado;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    /*public String getItensMercado() {
        return itensMercado;
    }
    public void setItensMercado(String itensMercado) {
        this.itensMercado = itensMercado;
    }*/
    public String getRua() {
        return rua;
    }
    public void setRua(String rua) {
        this.rua = rua;
    }
    public String getCep() {
        return cep;
    }
    public void setCep(String cep) {
        this.cep = cep;
    }

}