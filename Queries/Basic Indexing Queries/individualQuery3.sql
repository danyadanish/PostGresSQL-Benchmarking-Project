-- Query 3

SELECT * 
FROM data_src ds inner join datsrcln dl on ds.datasrc_id = dl.datasrc_id 
inner join nut_data nd on dl.ndb_no = nd.ndb_no and dl.nutr_no = nd.nutr_no
where year > 2000;
