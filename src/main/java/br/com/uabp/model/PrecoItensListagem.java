package br.com.uabp.model;

import java.io.Serializable;

import org.hibernate.mapping.List;

import jakarta.annotation.PostConstruct;
import jakarta.persistence.Entity;

@Entity
public class PrecoItensListagem implements Serializable{

    private Integer upc_a;
    private Integer cnpj_min;
    private Float max_preco;
    private Float med_preco;
    private Float min_preco;

    // @OneToMany(mappedBy = "usuario", orphanRemoval = true, cascade = CascadeType.ALL)

    @PostConstruct
    public void initialize(List precosItem){

    }

    public Integer getUpc_a() {
        return upc_a;
    }
    public void setUpc_a(Integer upc_a) {
        this.upc_a = upc_a;
    }
    public Integer getCnpj_min() {
        return cnpj_min;
    }
    public void setCnpj_min(Integer cnpj_min) {
        this.cnpj_min = cnpj_min;
    }
    public Float getMax_preco() {
        return max_preco;
    }
    public void setMax_preco(Float max_preco) {
        this.max_preco = max_preco;
    }
    public Float getMed_preco() {
        return med_preco;
    }
    public void setMed_preco(Float med_preco) {
        this.med_preco = med_preco;
    }
    public Float getMin_preco() {
        return min_preco;
    }
    public void setMin_preco(Float min_preco) {
        this.min_preco = min_preco;
    }

    public static Float CalcularMax(List precos){
        return null;
    }
    public static Float CalcularMed(List precos){
        return null;
    }
    public static Float CalcularMin(List precos){
        return null;
    }
}
