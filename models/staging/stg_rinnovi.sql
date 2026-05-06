SELECT 
    id AS id_rinnovo,
    id_ordine,
    attivo AS rinnovo_attivo
FROM {{ source('raw_pay', 'rinnovi') }}