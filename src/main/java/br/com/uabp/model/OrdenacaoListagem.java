package br.com.uabp.model;

import java.io.Serializable;

import org.hibernate.mapping.List;

import jakarta.persistence.Entity;

@Entity
public class OrdenacaoListagem implements Serializable{

    private String tipo;

    public String getTipo() {
        return tipo;
    }
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    public static List Ordenacao(){
        return null;
    }

}
