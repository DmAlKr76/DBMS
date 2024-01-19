select
t.habitat_id,
ST_Area(t.geom) area
from (select habitat_id, geom from public.buowl_habitat 
order by habitat_id
limit 5) t
order by area