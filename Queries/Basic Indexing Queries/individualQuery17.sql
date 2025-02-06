-- Query 17
select * from src_cd sc inner join nut_data nd on sc.src_cd = nd.src_cd inner join food_des fd on fd.ndb_no = nd.ndb_no where nd.src_cd = 10;
