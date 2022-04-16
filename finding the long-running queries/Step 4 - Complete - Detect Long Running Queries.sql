
/* detect slow running queries */	
select distinct * from (    
    SELECT convert(sql_text using utf8) as query FROM mysql.slow_log 
) as q2 
WHERE q2.query like '%driver%';