package br.com.uabp.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.uabp.model.Usuario;
import br.com.uabp.repository.UsuarioRepository;

@RestController
//@RequestMapping(value="/usuario")
@Controller("IndexController")
public class IndexController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    // Retornando registro do BD via id
    @GetMapping(value="/bd/{id}", produces="application/json")
    public ResponseEntity<Usuario> searchUser(@PathVariable(value="id") Long id){

        try{
            Optional<Usuario> usuario = usuarioRepository.findById(id);
            return new ResponseEntity(usuario.get(), HttpStatus.OK);
        }catch(Exception e){
            return new ResponseEntity(e, HttpStatus.NOT_FOUND);
        }   
    }
    
    // Cadastrando usuario
    @PostMapping(value="/", produces="application/json")
    public ResponseEntity<Usuario> cadastrar (@RequestBody Usuario usuario){    

        Usuario usuarioSalvo = usuarioRepository.save(usuario);

        return new ResponseEntity(usuarioSalvo, HttpStatus.OK);
    }
}
