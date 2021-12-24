package com.example.domain.events;

import com.example.core.DomainEvent;

public class PaymentCreatedEvent extends DomainEvent {

    private final float amount;

    public PaymentCreatedEvent(float amount) {
        this.amount = amount;
    }

    public float getAmount() {
        return amount;
    }
}
