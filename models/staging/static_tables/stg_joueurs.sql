with source as (

    select * from {{ source('champions', 'joueurs') }}

),

renamed as (

    select
        joueur_id,
        nomjoueur,
        prenomjoueur,
        date_naissance,
        poste_id,
        paysjoueur

    from source

)

select * from renamed
