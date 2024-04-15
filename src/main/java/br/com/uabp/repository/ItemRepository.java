package br.com.uabp.repository;

import org.springframework.data.repository.CrudRepository;

import br.com.uabp.model.Item;

public interface ItemRepository extends CrudRepository<Item, Long>{

    
}
