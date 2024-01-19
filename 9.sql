select 
gp_segment_id, 
count(*) 
from gp_dist_random('tpch1.customer') 
group by 1;