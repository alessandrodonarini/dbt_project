SELECT 
    id AS id_cliente,
    nome,
    telefono,
    email,
    indirizzo
FROM {{ ref('stg_clienti') }}