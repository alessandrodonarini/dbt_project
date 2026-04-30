SELECT 
    id AS id_locale,
    nome,
    indirizzo
FROM {{ ref('stg_locali') }}