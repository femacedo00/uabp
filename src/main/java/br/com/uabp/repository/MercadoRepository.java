package br.com.uabp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.uabp.model.Mercado;

@Repository
public interface MercadoRepository extends CrudRepository<Mercado, Long>{

    
}

