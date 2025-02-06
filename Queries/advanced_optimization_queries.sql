
--Query 1
select * from food_des fd inner join fd_group fg on fd.fdgrp_cd = fg.fdgrp_cd where fg.fddrp_desc = 'Breakfast Cereals';
--Query 2
select * from weight where seq = '1';
--Query 3
select * from weight where seq = '1' and amount > 3;
--Query 4
select ndb_no from weight except select ndb_no from food_des;
--Query 5
select ndb_no from weight except select ndb_no from datsrcln;
--Query 6
select nutdef.nutrdesc, w.gm_wgt from nutr_def nutdef inner join nut_data nd on nd.nutr_no = nutdef.nutr_no inner join weight w on w.ndb_no = nd.ndb_no where nutdef.tagname = 'CA';
--Query 7
select nutdef.nutrdesc, w.gm_wgt from nutr_def nutdef inner join nut_data nd on nd.nutr_no = nutdef.nutr_no inner join weight w on w.ndb_no = nd.ndb_no where nutdef.tagname like 'CA%';
--Query 8
select count(*) from food_des where fat_factor is null;
--Query 9
select * from food_des where fat_factor is null;
--Query 10
select min(n_factor) from food_des where fat_factor is null;
--Query 11
select sum(n_factor) from food_des where fat_factor is null;
--Query 12
select sum(n_factor) from food_des where fat_factor is not null;
--Query 13
select tagname from nutr_def nutdef inner join datsrcln dsl on dsl.nutr_no = nutdef.nutr_no inner join data_src ds on ds.datasrc_id = dsl.datasrc_id where ds.vol_city = 'Cincinnati';
--Query 14
select * from weight where amount < 2;
--Query 15
select * from weight where amount > 2;
--Query 16
select msre_desc, avg(amount) from weight where amount > 2 group by amount, msre_desc;
--Query 17
select fd.long_desc, nd.num_studies
from food_des fd inner join nut_data nd on fd.ndb_no = nd.ndb_no
group by fd.long_desc,nd.num_studies
having num_studies = (select max(num_studies) from nut_data);
--Query 18
select * from fd_group fd inner join food_des fod on fd.fdgrp_cd = fod.fdgrp_cd;
--Query 19
select * from fd_group fd inner join food_des fod on fd.fdgrp_cd = fod.fdgrp_cd
inner join nut_data nd on nd.ndb_no = fod.ndb_no;
-- Query 20
(select ndb_no from weight where amount > 50)
INTERSECT
(select ndb_no from food_des fod inner join fd_group fd on fd.fdgrp_cd = fod.fdgrp_cd where fd.fddrp_desc = 'Snacks');
--Query 21
select max(ndb_no) from (select * from fd_group fd inner join food_des fod on fd.fdgrp_cd = fod.fdgrp_cd) as t;
--Query 22
select ndb_no, sum(fat_factor), sum(pro_factor) from (select * from fd_group fd inner join food_des fod on fd.fdgrp_cd = fod.fdgrp_cd) as t group by fat_factor, pro_factor, ndb_no;
--Query 23
select max(total_fat_factor), max(total_pro_factor) from (select ndb_no, sum(fat_factor) as total_fat_factor, sum(pro_factor) as total_pro_factor from (select * from fd_group fd inner join food_des fod on fd.fdgrp_cd = fod.fdgrp_cd) as t group by fat_factor, pro_factor, ndb_no) as x;
--Query 24
select srccd_desc from src_cd;
