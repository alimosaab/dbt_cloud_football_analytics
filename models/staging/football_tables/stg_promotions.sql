with source as (

    select * from {{ source('champions', 'promotions') }}

),

renamed as (

    select
        promotion_id,
        saison_id,
        equipe_id,
        statut

    from source

)

select * from renamed