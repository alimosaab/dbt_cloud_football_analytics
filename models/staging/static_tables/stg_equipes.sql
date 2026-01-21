with source as (

    select * from {{ source('champions', 'equipes') }}

),

renamed as (

    select
        -- On s'assure que les IDs sont bien des entiers
        cast(equipe_id as integer) as equipe_id,
        
        -- Nettoyage des chaînes : suppression des espaces inutiles
        trim(nomequipe) as equipe_nom,
        
        -- Mise en majuscule des abréviations (ex: 'psg' -> 'PSG')
        upper(trim(abreviation)) as equipe_abreviation,
        
        annee_fondation,
        
        -- Uniformisation du pays en majuscules pour les tests futurs
        upper(trim(paysequipe)) as pays_nom,
        
        cast(stade_id as integer) as stade_id

    from source

)

select * from renamed