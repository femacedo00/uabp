/*package br.com.uabp.model;

import java.io.Serializable;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;

@Entity
public class Carrinho implements Serializable{
    @EmbeddedId // A definir
    private Integer quantidade;
    private String favorito;

    // @OneToMany(mappedBy = "usuario", orphanRemoval = true, cascade = CascadeType.ALL)

    public Integer getQuantidade() {
        return quantidade;
    }
    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }
    public String getFavorito() {
        return favorito;
    }
    public void setFavorito(String favorito) {
        this.favorito = favorito;
    }

}
*/