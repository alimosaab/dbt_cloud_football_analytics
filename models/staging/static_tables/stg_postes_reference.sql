with source as (

    select * from {{ source('champions', 'postes_reference') }}

),

renamed as (

    select
        poste_id,
        nomposte

    from source

)

select * from renamed