package br.com.uabp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.CrossOrigin;

import br.com.uabp.model.Item;
import br.com.uabp.model.ItemRegisterDTO;
import br.com.uabp.repository.ItemRepository;
import jakarta.validation.Valid;

@CrossOrigin()
@Controller("ItemController")
@RequestMapping("item")
public class ItemController {
    
    @Autowired
    private ItemRepository itemRepository;

    @GetMapping(value="/", produces="application/json")
    public ResponseEntity<List<Item>> getAllItens(){
        try{
            List<Item> itens = (List<Item>) this.itemRepository.findAll();

            return new ResponseEntity(itens, HttpStatus.OK);
        }catch (Exception e){
            return ResponseEntity.internalServerError().body(null);
        }
    }

    @PostMapping(value="/", produces="application/json")
    public ResponseEntity<Item> insertNewItem(@RequestBody Item item){
        Item itemInserido = itemRepository.save(item);

        return new ResponseEntity(itemInserido, HttpStatus.OK);
    }

}
