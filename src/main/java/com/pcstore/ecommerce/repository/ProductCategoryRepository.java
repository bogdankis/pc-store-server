package com.pcstore.ecommerce.repository;

import com.pcstore.ecommerce.model.ProductCategory;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryRepository extends CrudRepository<ProductCategory,Long> {

}
