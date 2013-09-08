DELETE FROM users WHERE MID = 13;
DELETE FROM officevisits WHERE PatientID = 13;
DELETE FROM patients WHERE MID = 13;
DELETE FROM declaredhcp WHERE PatientID = 13;
DELETE FROM ovdiagnosis WHERE VisitID = 1065;
DELETE FROM ovmedication WHERE VisitID = 1065;


INSERT INTO users(MID, password, role, sQuestion, sAnswer) 
			VALUES (13, '1a91d62f7ca67399625a4368a6ab5d4a3baa6073', 'patient', 'how you doin?', 'good');
/*password: pw*/
INSERT INTO patients (MID, firstName,lastName, email, phone) 
VALUES (13, 'Blim', 'Cildron', 'i@j.com', '919-555-9213');


INSERT INTO officevisits(id,visitDate,HCPID,notes,HospitalID,PatientID)
VALUES (1065,'2007-6-09',9900000000,'Yet another office visit.','1',13);



INSERT INTO ovmedication(NDCode, VisitID, StartDate,EndDate,Dosage,Instructions)
	VALUES ('647641512', 1065, '2006-10-10', DATE_ADD(CURDATE(), INTERVAL 5 DAY), 5, 'Take twice daily');

INSERT INTO icdcodes(Code, Description) VALUES (3.00, '');
INSERT INTO ovdiagnosis(ICDCode, VisitID) VALUES 
			(3.00, 1065);

INSERT INTO declaredhcp(PatientID, HCPID) VALUES (13, 9900000000);