DELETE FROM users WHERE MID = 14;
DELETE FROM officevisits WHERE PatientID = 14;
DELETE FROM patients WHERE MID = 14;
DELETE FROM declaredhcp WHERE PatientID = 14;
DELETE FROM ovdiagnosis WHERE VisitID = 1066;
DELETE FROM ovmedication WHERE VisitID = 1066;


INSERT INTO users(MID, password, role, sQuestion, sAnswer) 
			VALUES (14, '1a91d62f7ca67399625a4368a6ab5d4a3baa6073', 'patient', 'how you doin?', 'good');
/*password: pw*/
INSERT INTO patients (MID, firstName,lastName, email, phone) 
VALUES (14, 'Zack', 'Arthur', 'k@l.com', '919-555-1234');


INSERT INTO officevisits(id,visitDate,HCPID,notes,HospitalID,PatientID)
VALUES (1066,'2007-6-09',9900000000,'Yet another office visit.','1',14);



INSERT INTO ovmedication(NDCode, VisitID, StartDate,EndDate,Dosage,Instructions)
	VALUES ('647641512', 1066, '2006-10-10', CURDATE(), 5, 'Take twice daily');

INSERT INTO icdcodes (Code, Description) VALUES (459.99, '');

INSERT INTO ovdiagnosis(ICDCode, VisitID) VALUES 
			(459.99, 1066);

INSERT INTO declaredhcp(PatientID, HCPID) VALUES (14, 9900000000);