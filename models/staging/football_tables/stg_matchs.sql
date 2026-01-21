with source as (

    select * from {{ source('champions', 'matchs') }}

),

renamed as (

    select
        match_id,
        saison_id,
        numero_journee,
        equipe_domicile_id,
        equipe_exterieur_id,
        stade_id,
        date_match,
        buts_domicile,
        buts_exterieur

    from source

)

select * from renamed