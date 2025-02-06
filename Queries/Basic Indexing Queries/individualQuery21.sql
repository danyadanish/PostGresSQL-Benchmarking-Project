-- Query 21
select ndb_no, num_studies, nd.deriv_cd from deriv_cd dc inner join nut_data nd on dc.deriv_cd = nd.deriv_cd where dc.derivcd_desc like '%food%' and nd.deriv_cd = 'BFYN';
