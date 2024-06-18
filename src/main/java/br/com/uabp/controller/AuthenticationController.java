package br.com.uabp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
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

@CrossOrigin()
@RestController
@RequestMapping("auth")
public class AuthenticationController {
    
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private UsuarioRepository usuarioRepository;
    @Autowired
    private TokenService tokenService;

    @PostMapping("/login")
    public ResponseEntity login(@RequestBody @Valid AuthenticationDTO data){
        var usernamePassword = new UsernamePasswordAuthenticationToken(data.login(), data.password());
        try{
            var auth = this.authenticationManager.authenticate(usernamePassword);
            var usuario = (Usuario) auth.getPrincipal();
            var token = tokenService.generateToken(usuario);
            
            return ResponseEntity.ok(new LoginResponseDTO(token, usuario.getNome()));
        }catch(Exception e){
            return ResponseEntity.internalServerError().body(null);
        }

    }

    @PostMapping("/register")
    public ResponseEntity register(@RequestBody @Valid RegisterDTO data){
        // Primeiro verifica se já não existe outro usuário cadastrado com o mesmo login
        if(this.usuarioRepository.findByLogin(data.login()) != null) return ResponseEntity.badRequest().build();

        // Caso não exista, vamos encriptar a senha para salvar no BD. A senha bruta do usuário 
        // NÃO DEVE SER INSERIDA NO BD POR MEDIDAS DE SEGURANÇA.

        String encryptedPassword = new BCryptPasswordEncoder().encode(data.password());

        Usuario newUser = new Usuario(data.login(), encryptedPassword, data.name());

        this.usuarioRepository.save(newUser);

        var usernamePassword = new UsernamePasswordAuthenticationToken(data.login(), data.password());
        try {
            var auth = this.authenticationManager.authenticate(usernamePassword);
            var usuario = (Usuario) auth.getPrincipal();
            var token = tokenService.generateToken(usuario);
            
            return ResponseEntity.ok(new LoginResponseDTO(token, usuario.getNome()));
        } catch(Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }
}
