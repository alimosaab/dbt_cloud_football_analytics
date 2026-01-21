with source as (

    select * from {{ source('champions', 'relegations') }}

),

renamed as (

    select
        relegation_id,
        saison_id,
        equipe_id,
        classement_final

    from source

)

select * from renamed