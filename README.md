# cov19_hospital_database_design
This project is from my McGill final exam
Requirment and relations of this databse:
•The hospital needs to keep track of both the patients as well as any person(s) that they have been in contact with before they were isolated. For all of these individuals (both patients and persons who had been in contact with them), the hospital keeps track of their name, email, phone number, age, street address, and the borough (boroughs are subdivisions of a city) in which they live. It is not immediately clear whether any of these information could be used to uniquely identify someone. So you may have to make design decisions in your application that will give you more ﬂexibility.

•When a person is identiﬁed to have been in contact with a person who is conﬁrmed to be infected with COVID19, the hospital starts gathering the above mentioned personal information about that person. Keep in mind that not all of this information may be immediately available. You are told that along with the person’s name, the hospital will at least capture the email address or the phone number of the person to start with.

•Sometimes the hospital need to reach out to the person and inform them that they could be potentially infected and need to come over and get tested. A person who is identiﬁed to have been in contact with an infected person should get tested eventually, although it may not happen immediately. The day on which the test sample is taken from the person must be stored along with the test results. Again, keep in mind that the test result may not be immediately available. Once a test sample is taken, the test result would be stated as pending and depending on the results, it would eventually become positive or negative (is infected or not infected, respectively).

•An infected person is now treated as a patient. Keep in mind that someone might come to the hospital on their own with symptoms, get tested and become a patient too.

•Your system should be able to keep track of who has been in contact with whom (keep in mind that a patient/person could have been in contact with multiple patients/persons). We are not interested in tracking contacts between two uninfected (both were never infected) persons.

•Patients are administered various drugs, and the system need to keep track of the name of the drug (unique) - (hydroxychloroquine, remdesivir, etc.) and ATC Code associated with the drug (a 7 character code). The system should also keep track of the dosage (milligrams), as well as the day (date) and hour of the day in which the drug was administered. A health care professional (doctor or nurse) is responsible for administering the drug to the patients.

•The system need to keep track of the hospital id (unique), name, designation (nurse or doctor), and the phone number of the health care professionals.

•Doctors and nurses also make observations about the patients during their visits. These need to be kept track as free text, along with the day (date) and hour of the day in which the observation is made.

•It is important that the system can track as to who administered what drug / when to which patient as well as who made what observation / when about which patient.

•Remember that administering drugs and making observations are independent of each other. You can perform one without necessarily doing the other.

•The system also keeps track of the status of a patient. The patient starts of with an infected status and would eventually move to a recovered or deceased (patient died) status. Keep in mind that the administration of drugs, making observations, etc., cannot be done for patients who are recovered or dead.

•A person may get tested multiple times (been in contact with multiple patients), however, we are only interested in the latest test information about that person (it is presumed that all the previous tests were negative, otherwise there is no point for a new test).

•The system should also keep track of the overall general population numbers associated with each borough in the city of Montreal.
