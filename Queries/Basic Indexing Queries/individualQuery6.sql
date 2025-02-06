-- Query 6

select * from nutr_def nu inner join nut_data nd on nu.nutr_no = nd.nutr_no where max is null;
