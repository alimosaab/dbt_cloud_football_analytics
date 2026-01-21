with source as (

    select * from {{ source('champions', 'stades') }}

),

renamed as (

    select
        -- On force le type smallint pour l'ID (si < 32767)
        cast(stade_id as smallint) as stade_id,
        -- On limite le nom du stade à 50 caractères et on supprime les éspaces avant et après
        trim(nomStade)::varchar(50) as stade_nom,
        villestade,
        -- le pays en majuscules et suppression des espaces
        trim(upper(paysStade))::varchar(50) as pays_nom,
        -- remplacer les null dans capacité par 0
        coalesce(capacite, 0)::integer as capacite_stade,
        -- ajouter une colonne fonctionnel
        (coalesce(capacite, 0) > 50000)::boolean as is_grande_arene

    from source

)

select * from renamed