package com.pcstore.ecommerce.repository;

import com.pcstore.ecommerce.model.Country;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "countries", path = "countries")
public interface CountryRepository extends CrudRepository<Country, Integer> {
}


