package com.pcstore.ecommerce.service;

import com.pcstore.ecommerce.dto.PaymentInfo;
import com.pcstore.ecommerce.dto.Purchase;
import com.pcstore.ecommerce.dto.PurchaseResponse;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;

public interface CheckoutService {


    PurchaseResponse placeOrder(Purchase purchase);

    PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException;

}
