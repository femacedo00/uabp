package br.com.uabp.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import br.com.uabp.model.Item;

public interface ItemRepository extends CrudRepository<Item, Long>{
    // @Query("SELECT u FROM itens u WHERE u.upc_a = ?1")
	// Item findByUPCA(Long upc_a);
}
