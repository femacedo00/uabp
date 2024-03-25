package br.com.uabp.model;

import java.io.Serializable;

import javax.swing.ImageIcon;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;

@Entity
public class Mercado implements Serializable{

    private Integer cnpj;
    private String nome;
    private String rua;
    private String cep;
    private ImageIcon img;

    // @OneToMany(mappedBy = "usuario", orphanRemoval = true, cascade = CascadeType.ALL)

    public Integer getCnpj() {
        return cnpj;
    }
    public void setCnpj(Integer cnpj) {
        this.cnpj = cnpj;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
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
    public ImageIcon getImg() {
        return img;
    }
    public void setImg(ImageIcon img) {
        this.img = img;
    }

}
