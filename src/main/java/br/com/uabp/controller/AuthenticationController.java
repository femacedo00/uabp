package br.com.uabp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.uabp.model.AuthenticationDTO;
import br.com.uabp.model.LoginResponseDTO;
import br.com.uabp.model.RegisterDTO;
import br.com.uabp.model.Usuario;
import br.com.uabp.repository.UsuarioRepository;
import br.com.uabp.security.TokenService;
import jakarta.validation.Valid;

@RestController
@RequestMapping("auth")
public class AuthenticationController {
    
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private TokenService tokenService;

    public ResponseEntity login(@RequestBody @Valid AuthenticationDTO data){

        var usernamePassword = new UsernamePasswordAuthenticationToken(data.login(), data.password());
        try{
            var auth = this.authenticationManager.authenticate(usernamePassword);
            var token = tokenService.generateToken((Usuario)auth.getPrincipal());
            
            return ResponseEntity.ok(new LoginResponseDTO(token));
        }catch(Exception e){
            return ResponseEntity.internalServerError().body(null);
        }

    }

    @PostMapping("/register")
    public ResponseEntity register(@RequestBody @Valid RegisterDTO data){
        return new ResponseEntity(null);
    }
}
