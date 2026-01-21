with source as (

    select * from {{ source('champions', 'stats_joueurs_matchs') }}

),

renamed as (

    select
        stats_match_id,
        match_id,
        joueur_id,
        equipe_id,
        buts_marques,
        passes_decisives,
        temps_jeu_minutes,
        cartons_jaunes,
        cartons_rouges

    from source

)

select * from renamed