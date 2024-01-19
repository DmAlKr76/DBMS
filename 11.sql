explain --analyze
select *
from tpch1.customer_2 c join tpch1.orders_2 o on o.o_custkey=c.c_custkey;