with source as (

    select * from {{ source('champions', 'entraineurs') }}

),

renamed as (

    select
        entraineur_id,
        nomentraineur,
        prenomentraineur,
        date_naissance,
        paysentraineur

    from source

)

select * from renamed