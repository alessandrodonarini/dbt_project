SELECT 
    id AS id_abbonamento,
    id_ordine,
    iniziato_il,
    finito_il
FROM {{ source('raw_pay', 'abbonamenti') }}