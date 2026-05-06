SELECT
    f.id_ordine,
    f.data_ordine,
    f.data_transazione,
    f.importo,
    f.abbonamento_iniziato_il,
    f.abbonamento_finito_il,
    f.rinnovo_attivo,
    
    -- Info Utente
    u.nome AS utente_nome,
    u.cognome AS utente_cognome,
    
    -- Info Piano
    p.nome AS piano_nome,
    p.prezzo AS piano_prezzo,
    
    -- Info Metodo di Pagamento
    m.nome AS metodo_nome,
    
    -- Info Coupon
    c.codice AS coupon_codice,
    c.sconto AS coupon_sconto

FROM {{ ref('fct_ordini') }} f
LEFT JOIN {{ ref('dim_utenti') }} u ON f.id_utente = u.id_utente
LEFT JOIN {{ ref('dim_piani') }} p ON f.id_piano = p.id_piano
LEFT JOIN {{ ref('dim_metodi') }} m ON f.id_metodo = m.id_metodo
LEFT JOIN {{ ref('dim_coupon') }} c ON f.id_coupon = c.id_coupon