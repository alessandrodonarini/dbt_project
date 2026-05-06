SELECT 
    id AS id_coupon,
    codice,
    sconto
FROM {{ source('raw_pay', 'coupon') }}