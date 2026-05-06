SELECT 
    id AS id_ordine,
    id_utente,
    id_piano,
    id_coupon,
    id_metodo,
    data_ordine
FROM {{ source('raw_pay', 'ordini') }}