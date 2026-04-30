SELECT
    f.id_corsa,
    f.richiesta_il,
    f.accettata_il,
    f.iniziata_il,
    f.completata_il,
    f.cancellata_il,
    f.motivo_cancellazione,
    
    -- Dati Cliente
    c.nome AS cliente_nome,
    c.telefono AS cliente_telefono,
    c.email AS cliente_email,
    c.indirizzo AS cliente_indirizzo,
    
    -- Dati Rider
    r.nome AS rider_nome,
    r.telefono AS rider_telefono,
    
    -- Dati Locale
    l.nome AS locale_nome,
    l.indirizzo AS locale_indirizzo

FROM {{ ref('fact_corse') }} f
LEFT JOIN {{ ref('dim_clienti') }} c ON f.id_cliente = c.id_cliente
LEFT JOIN {{ ref('dim_riders') }} r ON f.id_rider = r.id_rider
LEFT JOIN {{ ref('dim_locali') }} l ON f.id_locale = l.id_locale