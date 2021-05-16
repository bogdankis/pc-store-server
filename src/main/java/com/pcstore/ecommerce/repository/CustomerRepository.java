package com.pcstore.ecommerce.repository;

import com.pcstore.ecommerce.model.Customer;
import org.springframework.data.repository.CrudRepository;


public interface CustomerRepository extends CrudRepository<Customer,Long> {
    Customer findByEmail (String theEmail);
}
