SELECT 
    id AS id_metodo,
    nome
FROM {{ source('raw_pay', 'metodi') }}