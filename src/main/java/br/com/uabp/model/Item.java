package br.com.uabp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "itens")
public class Item {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long upc_a;
    
    private String nome;
    private String marca;
    private String uni_grand;
    private Float num_grand;

    @ManyToOne
    @JoinColumn(name = "Categoria")
    private Categoria categoria;

    public Long getUpc_a() {
        return upc_a;
    }

    public void setUpc_a(Long upc_a) {
        this.upc_a = upc_a;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getUni_grand() {
        return uni_grand;
    }

    public void setUni_grand(String uni_grand) {
        this.uni_grand = uni_grand;
    }

    public Float getNum_grand() {
        return num_grand;
    }

    public void setNum_grand(Float num_grand) {
        this.num_grand = num_grand;
    }
}
