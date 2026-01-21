with source as (

    select * from {{ source('champions', 'cartons') }}

),

renamed as (

    select
        carton_id,
        match_id,
        minute_carton,
        type_carton,
        joueur_id,
        entraineur_id

    from source

)

select * from renamed