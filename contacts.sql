select ct.cname as name,ct.email as email,ct.phone as phone from citizen ct
where ct.cid in
      (select a.contcid from patient_contact a inner join  /*find every person's id if they are in contact with the patient*/
          (select c.cid from patient inner join citizen c on
              patient.cid = c.cid where c.email='dub.vizer@br.com') as pt
              on pt.cid=a.cid
          );
