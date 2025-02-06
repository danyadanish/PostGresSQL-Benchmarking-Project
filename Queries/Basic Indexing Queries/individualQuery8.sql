SELECT 
  food_des.ndb_no,
  food_des.long_desc,
  gm_wgt
  FROM food_des 
  INNER JOIN weight ON weight.ndb_no=food_des.ndb_no
  where weight.msre_desc ='serving';
