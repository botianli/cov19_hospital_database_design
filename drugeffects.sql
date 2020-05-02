select  count(*) as effected_patient from
          /*get each patient's first date of adm of the targed drug*/
        (select distinct cid, min(admin_date) as firstdate from admin_drug where dname='tocilizumab' group by admin_drug.cid) as drug_adm

            inner join
            /*join observation table of each patients with observation date after the first admin date*/
            patientobservation

                on drug_adm.cid=patientobservation.cid and observdate>drug_adm.firstdate

            where patientobservation.text LIKE '%dizz%'; /* select those who has dizz mentioned in the text*/
