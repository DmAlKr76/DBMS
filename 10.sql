explain --analyze
select *
from tpch1.nation_ext n join tpch1.region_ext r on n.regionkey=r.regionkey;