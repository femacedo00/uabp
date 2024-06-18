package br.com.uabp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.uabp.model.Categoria;
import br.com.uabp.repository.CategoriaRepository;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000") // Allow your frontend URL
@RestController
@RequestMapping("categoria")
public class CategoriaController {
    @Autowired
    private CategoriaRepository categoriaRepository;
    
    @GetMapping(value="/", produces="application/json")
    public ResponseEntity<List<Categoria>> getAllCategories(){
        try {
            List<Categoria> categorias = (List<Categoria>) this.categoriaRepository.findAll();
            return ResponseEntity.ok(categorias);
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }
}