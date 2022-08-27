-- Avgust oyi va undan keyingi ma'lumotlarni olish
select *
from public.locations
where reg_date > '2022-08-01';

-- Analiz qilamiz
-- Avgust oyi va undan keyingi ma'lumotlarni olish
-- 2 ta jadval ishlatildi. locations_y2022m08 va locations_y2023
explain analyse
select *
from public.locations
where reg_date > '2022-08-01';

-- Iyun va Ijul oylaridagi ma'lumotlarni olamiz
select *
from locations
where reg_date > '2022-07-01'
  and reg_date < '2022-08-01';

-- Iyun va Ijul oylaridagi ma'lumotlarni analiz qilamiz
-- 2 ta jadval ishlatildi. locations_y2022m06 va locations_y2022m06
explain analyse
select *
from locations
where reg_date > '2022-06-01'
  and reg_date < '2022-08-01';

-- Bitta oy ichida ma'lumot olib ko`ramiz
select *
from locations
where reg_date > '2022-08-01'
  and reg_date < '2022-08-20';

-- Bitta oy ichida ma'lumotlarni analiz qilamiz
-- 1 ta jadval ishlatildi. locations_y2022m08
explain analyse
select *
from locations
where reg_date > '2022-08-01'
  and reg_date < '2022-08-20';