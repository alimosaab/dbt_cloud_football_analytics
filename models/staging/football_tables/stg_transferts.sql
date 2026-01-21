with source as (

    select * from {{ source('champions', 'transferts') }}

),

renamed as (

    select
        transfert_id,
        joueur_id,
        entraineur_id,
        saison_id,
        ancienne_equipe_id,
        nouvelle_equipe_id,
        date_transfert,
        duree_contrat_annees,
        montant_transfert,
        type_transfert

    from source

)

select * from renamed