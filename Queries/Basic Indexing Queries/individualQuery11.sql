-- Query 11

select min(gm_wgt), msre_desc from food_des 
INNER JOIN weight ON weight.ndb_no=food_des.ndb_no group by msre_desc;
