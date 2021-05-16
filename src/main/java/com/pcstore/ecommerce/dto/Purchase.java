package com.pcstore.ecommerce.dto;

import com.pcstore.ecommerce.model.Address;
import com.pcstore.ecommerce.model.Customer;
import com.pcstore.ecommerce.model.Order;
import com.pcstore.ecommerce.model.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;


}
