with source as (

    select * from {{ source('champions', 'saison_equipes') }}

),

renamed as (

    select
        saison_id,
        equipe_id

    from source

)

select * from renamed