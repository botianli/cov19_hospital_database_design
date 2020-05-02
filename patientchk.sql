 select rs.observehour as hour,rs.observdate as date,hp.name as observer,rs.text as observation from
  healthcare_pros hp
     inner join
      (select * from
        patientobservation po
          where text LIKE '%breathing%'
          and
          cid=(select p.cid from patient p inner join citizen c on p.cid = c.cid where c.cname='Samantha Adam')
       ) as rs/* get patient's id then from observation find every text related to breathing*/
         on hp.hid=rs.hid /* join table so we know wich healthcare_pros edits these observation*/
    order by hour DESC,date DESC;
