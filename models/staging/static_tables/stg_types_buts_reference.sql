with source as (

    select * from {{ source('champions', 'types_buts_reference') }}

),

renamed as (

    select
        type_but_id,
        nom_type_but

    from source

)

select * from renamed