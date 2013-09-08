

INSERT INTO personnel(
MID,
AMID,
role,
lastName, 
firstName, 
address1,
address2)
VALUES (
9990000000,
null,
'hcp',
'Incomplete',
'Jimmy',
'567 Nowhere St.',
'PO Box 4')
ON DUPLICATE KEY UPDATE mid = mid;

INSERT INTO users(MID, password, role, sQuestion, sAnswer) VALUES(9990000000, '1a91d62f7ca67399625a4368a6ab5d4a3baa6073', 'hcp', 'second letter?', 'b')
ON DUPLICATE KEY UPDATE mid = mid;
/*password: pw*/
INSERT INTO hcpassignedhos(HCPID, HosID) VALUES(9990000000,'9191919191'), (9990000000,'8181818181')
ON DUPLICATE KEY UPDATE HCPID = HCPID;
