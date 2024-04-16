package br.com.uabp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.uabp.model.Mercado;
import br.com.uabp.repository.MercadoRepository;

@Controller("MercadoController")
@RequestMapping("mercado")
public class MercadoController {
    
    @Autowired
    private MercadoRepository mercadoRepository;

    @GetMapping(value="/", produces="application/json")
    public ResponseEntity<List<Mercado>> getAllItens(){
        try{
            List<Mercado> itens = (List<Mercado>) this.mercadoRepository.findAll();

            return new ResponseEntity(itens, HttpStatus.OK);
        }catch (Exception e){
            return ResponseEntity.internalServerError().body(null);
        }
    }
}
