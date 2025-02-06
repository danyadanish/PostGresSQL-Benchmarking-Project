-- Query 19
select ndb_no, num_studies, nd.deriv_cd from deriv_cd dc inner join nut_data nd on dc.deriv_cd = nd.deriv_cd where dc.derivcd_desc like '%food%' order by nd.deriv_cd; 
