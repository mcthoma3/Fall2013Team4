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
specialty) 
VALUES (
9000000001,
null,
'admin',
'Shifter',
'Shape',
'4321 My Road St',
'PO BOX 2',
'CityName',
'NY',
'12345-1234',
'999-888-7777',
'administrator'
)  ON DUPLICATE KEY UPDATE MID = MID;

INSERT INTO users(MID, password, role, sQuestion, sAnswer) VALUES(9000000001, '1a91d62f7ca67399625a4368a6ab5d4a3baa6073', 'admin', 'first letter?', 'a')
 ON DUPLICATE KEY UPDATE MID = MID;
 /*password: pw*/
