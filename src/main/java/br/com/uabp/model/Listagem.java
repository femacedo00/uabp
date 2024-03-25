package br.com.uabp.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;

@Entity
public class Listagem implements Serializable{

    // @OneToMany(mappedBy = "usuario", orphanRemoval = true, cascade = CascadeType.ALL)

    public void AlterarOrdenacao(List ordenacao) {
        
    }

}
