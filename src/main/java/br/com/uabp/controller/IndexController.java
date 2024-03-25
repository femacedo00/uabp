package br.com.uabp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Controller("IndexController")
public class IndexController{
    @GetMapping(value = "/", produces = "applcation/json")
    public ResponseEntity init(@RequestParam(value="nome", /*defaultValue = "Corno"*/ required = false) String nome){
        return new ResponseEntity("Ola Mundo " + nome + " ", HttpStatus.OK);
    }
}