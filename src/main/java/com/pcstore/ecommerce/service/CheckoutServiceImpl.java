package com.pcstore.ecommerce.service;

import com.pcstore.ecommerce.dto.PaymentInfo;
import com.pcstore.ecommerce.dto.Purchase;
import com.pcstore.ecommerce.dto.PurchaseResponse;
import com.pcstore.ecommerce.model.Customer;
import com.pcstore.ecommerce.model.Order;
import com.pcstore.ecommerce.model.OrderItem;
import com.pcstore.ecommerce.repository.CustomerRepository;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.*;

@Service
public class CheckoutServiceImpl implements CheckoutService {

    private CustomerRepository customerRepository;


    public CheckoutServiceImpl(CustomerRepository customerRepository,
                               @Value("${stripe.key.secret}") String secretKey) {
        this.customerRepository = customerRepository;
        Stripe.apiKey = secretKey;
    }

    @Override
    @Transactional
    public PurchaseResponse placeOrder(Purchase purchase) {

        //TODO retrieve the order info from DTO
        Order order = purchase.getOrder();
        //TODO generate tracking number

        String orderTrackingNumber = generateOrderTrackingNumber();
        order.setOrderTrackingNumber(orderTrackingNumber);

        //TODO populate order with orderItems
        Set<OrderItem> orderItems = purchase.getOrderItems();
        orderItems.forEach(item -> order.add(item));

        //TODO populate order with billingAddress and shippingAddress
        order.setBillingAddress(purchase.getBillingAddress());
        order.setShippingAddress(purchase.getShippingAddress());

        //TODO populate customer with order
        Customer customer = purchase.getCustomer();

        //TODO  check if this is an existing customer
        String theEmail = customer.getEmail();
        Customer customerFromDB = customerRepository.findByEmail(theEmail);
        if (customerFromDB != null) {
            customer = customerFromDB;
        }
        customer.add(order);

        //TODO save to database
        customerRepository.save(customer);
        //TODO return a response
        return new PurchaseResponse(orderTrackingNumber);
    }

    @Override
    public PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException {
        List<String> paymentMethodTypes = new ArrayList<>();
        paymentMethodTypes.add("card");

        Map<String, Object> params = new HashMap<>();
        params.put("amount", paymentInfo.getAmount());
        params.put("currency", paymentInfo.getCurrency());
        params.put("payment_method_types",paymentMethodTypes);
        params.put("description","Pcstore purchase");

        return PaymentIntent.create(params); //comunicates with back-end stripes.com
    }

    private String generateOrderTrackingNumber() {
        //TODO generate random UUID ID
        return UUID.randomUUID().toString();
    }
}