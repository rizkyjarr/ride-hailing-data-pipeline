{{
    config(
        materialized='incremental',
        unique_key='driver_id',
            partition_by={
                "field": "created_at",
                "data_type": "timestamp"
            }
    )
}}

WITH source AS (
    SELECT *
    FROM {{ source('source_table', 'driver_data') }}
),

cleaned AS (
    SELECT
        driver_id,
        name,
        email,
        -- Standardizing phone numbers
        REGEXP_REPLACE(phone_number, r'[\s\-\(\)]', '') AS phone_number,
        created_at
    FROM source
)

SELECT * FROM cleaned
{% if check_if_incremental() %}
    WHERE created_at > (
        SELECT MAX(created_at)
        FROM {{ this }}
    )
{% endif %}