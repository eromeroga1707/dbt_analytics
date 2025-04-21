SELECT
    CAST(staff_id AS STRING) AS staff_id,
    first_name,
    last_name,
    phone,
    email,
    active,
    CAST(store_id AS STRING) AS store_id,
    CAST(manager_id AS STRING) AS manager_id
FROM {{ source('local_bike', 'staffs') }}