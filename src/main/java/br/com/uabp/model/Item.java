package br.com.uabp.model;

import java.io.Serializable;

import javax.swing.ImageIcon;

import jakarta.persistence.Entity;

@Entity
public class Item implements Serializable{

    private Integer upc_a;
    private String nome;
    private String categoria;
    private String marca;
    private String uni_grand;
    private Float num_grand;
    private ImageIcon img;

    public Integer getUpc_a() {
        return upc_a;
    }
    public void setUpc_a(Integer upc_a) {
        this.upc_a = upc_a;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getCategoria() {
        return categoria;
    }
    public void setCategoria(String categoria) {
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
    public ImageIcon getImg() {
        return img;
    }
    public void setImg(ImageIcon img) {
        this.img = img;
    }
    
}
