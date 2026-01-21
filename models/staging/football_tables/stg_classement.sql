with source as (

    select * from {{ source('champions', 'classement') }}

),

renamed as (

    select
        saison_id,
        equipe_id,
        points,
        matchs_joues,
        victoires,
        defaites,
        nuls,
        buts_marques,
        buts_encaisses,
        difference_buts

    from source

)

select * from renamed