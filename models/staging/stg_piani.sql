SELECT 
    id AS id_piano,
    nome,
    prezzo,
    durata
FROM {{ source('raw_pay', 'piani') }}