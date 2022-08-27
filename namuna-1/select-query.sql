select *
from public.my_locations
where red_date > '2022-08-01';

explain analyse
select *
from public.my_locations
where red_date > '2022-08-01';