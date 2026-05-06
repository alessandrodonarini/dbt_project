SELECT 
    id AS id_utente,
    nome,
    cognome,
    data_nascita,
    data_registrazione
FROM {{ source('raw_pay', 'utenti') }}