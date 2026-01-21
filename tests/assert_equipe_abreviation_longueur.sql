-- Si cette requête renvoie des lignes, le test échoue.
select
    equipe_id,
    equipe_abreviation
from {{ ref('stg_equipes') }}
where length(equipe_abreviation) != 3


