SELECT
    CAST(store_id AS STRING) AS store_id,
    store_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
FROM {{ source('local_bike', 'stores') }}