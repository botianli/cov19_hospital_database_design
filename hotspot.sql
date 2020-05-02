select br.bname as borough_name,  count(*)/(br.population*1.00) as population_percentage from borough br
    inner join (livingarea la inner join patient p on la.cid = p.cid ) as rs
        on rs.bname=br.bname
          group by br.bname
            order by population_percentage Desc,br.bname ASC;

