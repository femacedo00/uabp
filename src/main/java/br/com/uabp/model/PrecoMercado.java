package br.com.uabp.model;

import java.io.Serializable;

import jakarta.persistence.Entity;

@Entity
public class PrecoMercado implements Serializable{

    private Integer upc_a;
    private Float preco;

    public Integer getUpc_a() {
        return upc_a;
    }
    public void setUpc_a(Integer upc_a) {
        this.upc_a = upc_a;
    }
    public Float getPreco() {
        return preco;
    }
    public void setPreco(Float preco) {
        this.preco = preco;
    }
    
}
