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
9999999990,
null,
'pha',
'Jones',
'Bob',
'4321 My Road St',
'PO BOX 2',
'CityName',
'NY',
'12345-1234',
'999-888-7777',
'human bieng',
'bjones@iTrust.org'
)ON DUPLICATE KEY UPDATE MID = MID;

INSERT INTO users(MID, password, role, sQuestion, sAnswer) VALUES(9999999990, '1a91d62f7ca67399625a4368a6ab5d4a3baa6073', 'pha', 'first letter?', 'a')
ON DUPLICATE KEY UPDATE MID = MID;
/*password: pw*/
