-- Ce test détecte les équipes dont le pays ne correspond pas au pays du stade
-- S'il renvoie des lignes, le test échoue.

with equipes as (
    select * from {{ ref('stg_equipes') }}
),

stades as (
    select * from {{ ref('stg_stades') }}
)

select
    e.equipe_id,
    e.equipe_nom,
    e.pays_nom as pays_equipe,
    s.stade_nom,
    s.pays_nom as pays_stade
from equipes e
join stades s on e.stade_id = s.stade_id
where e.pays_nom != s.pays_nom