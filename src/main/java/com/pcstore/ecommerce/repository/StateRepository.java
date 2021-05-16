package com.pcstore.ecommerce.repository;

import com.pcstore.ecommerce.model.State;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

@RepositoryRestResource
public interface StateRepository extends CrudRepository<State, Integer> {

    List<State> findByCountryCode(@Param("code") String code);
}
