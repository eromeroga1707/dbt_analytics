SELECT
    CAST(customer_id AS STRING) AS customer_id,
    first_name,
    last_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
FROM {{ source('local_bike', 'customers') }}