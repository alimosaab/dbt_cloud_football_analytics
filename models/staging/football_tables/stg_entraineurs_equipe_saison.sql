with source as (

    select * from {{ source('champions', 'entraineurs_equipe_saison') }}

),

renamed as (

    select
        contrat_saison_id,
        saison_id,
        entraineur_id,
        equipe_id,
        date_arrivee,
        date_depart

    from source

)

select * from renamed