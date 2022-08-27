select *
from public.locations
where reg_date > '2022-08-01';

explain analyse
select *
from public.locations
where reg_date > '2022-08-01';