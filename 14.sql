with intersects as (
select 
t1.geom as col_1, 
t2.geom as col_2
FROM public.linear_projects t1 CROSS JOIN public.linear_projects t2
where (t1.gid != t2.gid AND t1.gid <= t2.gid)),

result_table as (
select 
st_intersects(col_1, col_2) result
from intersects
)

select count(*)
from result_table
where result is True


--SELECT 
--COUNT(*) AS intersection_count
--FROM public.linear_projects AS lp1, public.linear_projects AS lp2
--WHERE st_intersects(lp1.geom, lp2.geom) AND lp1.gid < lp2.gid