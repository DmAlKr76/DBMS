explain analyze
select *
from tpch1.customer c join tpch1.orders o on o.o_custkey=c.c_custkey;