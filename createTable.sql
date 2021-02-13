-- DROP TABLE public.transactions;

CREATE TABLE public.transactions
(
    trans_id integer NOT NULL DEFAULT nextval('transactions_trans_id_seq'::regclass),
    edate date,
    transactiondescription text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    debit real,
    credit real,
    balance real,
    checkno integer,
    CONSTRAINT transactions_pkey PRIMARY KEY (trans_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.transactions
    OWNER to user;
