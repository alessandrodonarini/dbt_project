SELECT 
    id AS id_transazione,
    id_ordine,
    data_transazione,
    importo
FROM {{ source('raw_pay', 'transazioni') }}