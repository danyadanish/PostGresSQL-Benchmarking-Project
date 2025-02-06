-- Query 13
select min(gm_wgt), msre_desc
from weight
where gm_wgt > 100
group by msre_desc;
