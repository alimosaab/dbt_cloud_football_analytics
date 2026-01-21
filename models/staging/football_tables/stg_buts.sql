with source as (

    select * from {{ source('champions', 'buts') }}

),

renamed as (

    select
        but_id,
        match_id,
        joueur_id,
        equipe_but_id,
        minute_but,
        type_but_id

    from source

)

select * from renamed