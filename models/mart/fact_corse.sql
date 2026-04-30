WITH corse AS (
    SELECT * FROM {{ ref('stg_corse') }}
),
richieste AS (
    SELECT * FROM {{ ref('stg_corse_richieste') }}
),
accettate AS (
    SELECT * FROM {{ ref('stg_corse_accettate') }}
),
iniziate AS (
    SELECT * FROM {{ ref('stg_corse_iniziate') }}
),
completate AS (
    SELECT * FROM {{ ref('stg_corse_completate') }}
),
cancellate AS (
    SELECT * FROM {{ ref('stg_corse_cancellate') }}
)

SELECT
    c.id AS id_corsa,
    c.id_rider,
    c.id_cliente,
    c.id_locale,
    r.creato_il AS richiesta_il,
    a.creato_il AS accettata_il,
    i.creato_il AS iniziata_il,
    comp.creato_il AS completata_il,
    canc.creato_il AS cancellata_il,
    canc.motivo AS motivo_cancellazione
FROM corse c
LEFT JOIN richieste r ON c.id = r.id_corsa
LEFT JOIN accettate a ON c.id = a.id_corsa
LEFT JOIN iniziate i ON c.id = i.id_corsa
LEFT JOIN completate comp ON c.id = comp.id_corsa
LEFT JOIN cancellate canc ON c.id = canc.id_corsa