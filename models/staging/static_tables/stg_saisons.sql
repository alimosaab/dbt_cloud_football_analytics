with source as (

    select * from {{ source('champions', 'saisons') }}

),

renamed as (

    select
        saison_id,
        annee_debut,
        annee_fin

    from source

)

select * from renamed