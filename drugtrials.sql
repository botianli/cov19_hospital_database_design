
/* max(coalesce) function for drugname, unrecove and recovered column in case some drug have zero recovered or unrecovered or in a row a drugname is null in unrecov col but not in recovered column*/
select max(coalesce(unrecov.dname,recovered.dname)), max(coalesce(unrecov.number,0)) as unrecovered,  max(coalesce(recovered.number,0 ))as recovered  from
    (select patientDrug.dname, count(patientDrug.cid) as number from (
        select distinct patient.cid, dname from patient
            join admin_drug ad  on  patient.cid = ad.cid) as patientDrug
                inner join patient on patientDrug.cid=patient.cid and (patient.status='infected'or patient.status='dead')
                    group by patientDrug.dname
        ) as unrecov /*find all unrecovered patient table group by drugname and number of patients*/
       full outer join
        (select patientDrug.dname, count(patientDrug.cid) as number from (
            select distinct patient.cid, dname from patient join admin_drug ad  on  patient.cid = ad.cid) as patientDrug
                inner join patient on patientDrug.cid=patient.cid and patient.status='recovered'
                    group by patientDrug.dname
        )as recovered /*find all recovered patient table group by drugname and number of patients*/
            on unrecov.dname=recovered.dname  /* full outer join them produce both covered number and unconvered number associte with each drug*/
        group by unrecov.dname, unrecov.number,recovered.number;
