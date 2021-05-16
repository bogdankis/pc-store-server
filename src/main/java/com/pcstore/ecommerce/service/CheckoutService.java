package com.pcstore.ecommerce.service;

import com.pcstore.ecommerce.dto.Purchase;
import com.pcstore.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {


    PurchaseResponse placeOrder(Purchase purchase);


}
