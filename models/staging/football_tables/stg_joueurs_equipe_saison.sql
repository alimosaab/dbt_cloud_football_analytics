with source as (

    select * from {{ source('champions', 'joueurs_equipe_saison') }}

),

renamed as (

    select
        contrat_saison_id,
        saison_id,
        joueur_id,
        equipe_id,
        date_arrivee,
        date_depart

    from source

)

select * from renamed