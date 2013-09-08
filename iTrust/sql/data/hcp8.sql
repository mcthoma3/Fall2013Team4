INSERT INTO personnel(
MID,
AMID,
role,
lastName, 
firstName, 
address1,
address2,
city,
state,
zip,
phone,
specialty,
email)
VALUES (
9000000008,
null,
'hcp',
'George',
'Curious',
'Monkey Street',
'',
'Monkey Town',
'CA',
'12345-1234',
'999-888-7777',
'Pediatrician',
'meepmeep@meep.org'
)ON DUPLICATE KEY UPDATE MID = MID;

INSERT INTO users(MID, password, role, sQuestion, sAnswer) VALUES(9000000008, '1a91d62f7ca67399625a4368a6ab5d4a3baa6073', 'hcp', 'first letter?', 'a')
ON DUPLICATE KEY UPDATE MID = MID;
/*password: pw*/
INSERT INTO hcpassignedhos(HCPID, HosID) VALUES(9000000008,'4'), (9000000008,'4')
ON DUPLICATE KEY UPDATE HCPID = HCPID;
