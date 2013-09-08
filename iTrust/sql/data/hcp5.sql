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
9000000005,
null,
'hcp',
'Soulcrusher',
'Sarah',
'4321 My Road St',
'PO BOX 2',
'Woodbridge',
'NY',
'12345-1234',
'999-888-7777',
'surgeon',
'ssoulcrusher@iTrust.org'
)ON DUPLICATE KEY UPDATE MID = MID;

INSERT INTO users(MID, password, role, sQuestion, sAnswer) VALUES(9000000005, '1a91d62f7ca67399625a4368a6ab5d4a3baa6073', 'hcp', 'first letter?', 'a')
ON DUPLICATE KEY UPDATE MID = MID;
-- password: pw
INSERT INTO hcpassignedhos(HCPID, HosID) VALUES(9000000005,'9191919191'), (9000000005,'8181818181')
ON DUPLICATE KEY UPDATE HCPID = HCPID;
