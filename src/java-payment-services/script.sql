create table payment_events
(
    "id"           bigint generated by default as identity (maxvalue 2147483647)
        constraint "PaymentAggregate_pkey"
            primary key,
    aggregate_id uuid not null,
    content        json not null,
    event_type     text
);

alter table payment_events
    owner to postgres;



INSERT INTO payment_events(aggregate_id, content, event_type)
VALUES ('2aa72eb6-4f05-4a43-bd38-d4f26124a997','{"Name":"dadasds"}','denemee')