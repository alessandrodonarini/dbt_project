SELECT 
    id AS id_rider,
    nome,
    telefono
FROM {{ ref('stg_riders') }}