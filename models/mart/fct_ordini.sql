WITH ordini AS (
    SELECT * FROM {{ ref('stg_ordini') }}
),
transazioni AS (
    SELECT * FROM {{ ref('stg_transazioni') }}
),
abbonamenti AS (
    SELECT * FROM {{ ref('stg_abbonamenti') }}
),
rinnovi AS (
    SELECT * FROM {{ ref('stg_rinnovi') }}
)

SELECT
    o.id_ordine,
    o.id_utente,
    o.id_piano,
    o.id_coupon,
    o.id_metodo,
    o.data_ordine,
    t.data_transazione,
    t.importo,
    a.iniziato_il AS abbonamento_iniziato_il,
    a.finito_il AS abbonamento_finito_il,
    r.rinnovo_attivo
FROM ordini o
LEFT JOIN transazioni t ON o.id_ordine = t.id_ordine
LEFT JOIN abbonamenti a ON o.id_ordine = a.id_ordine
LEFT JOIN rinnovi r ON o.id_ordine = r.id_ordine