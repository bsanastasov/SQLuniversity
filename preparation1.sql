use movies;

INSERT INTO MOVIESTAR(NAME, BIRTHDATE)
VALUES ('Nicole Kidman', 1967-06-20);

DELETE FROM MOVIEEXEC
WHERE NETWORTH < 30000000;

DELETE FROM MOVIESTAR
WHERE ADDRESS IS NULL;

use pc;

INSERT INTO product(maker, model, type)
VALUES ('C', '1100', 'PC');

INSERT INTO pc(code, model, speed, ram, hd, cd, price)
VALUES (12, '1100', 2400, 2048, 500, '52x', 299);

DELETE FROM pc
WHERE model = 1100;

DELETE FROM product
WHERE model = 1100;

--DELETE FROM product 
--WHERE type = 'Laptop';

UPDATE product 
SET maker = 'A'
WHERE maker = 'B';

UPDATE pc
SET price = price/2, hd = hd + 20

UPDATE laptop
SET screen = screen + 100
WHERE model IN
	(SELECT model FROM Product
	WHERE maker = 'C');


use ships;


INSERT INTO SHIPS(NAME, CLASS, LAUNCHED)
VALUES ('Nelson', 'Nelson', 1927);

INSERT INTO SHIPS(NAME, CLASS, LAUNCHED)
VALUES ('Rodney', 'Nelson', 1927);
 
 INSERT INTO CLASSES(CLASS, TYPE, COUNTRY, BORE, DISPLACEMENT)
VALUES ('Nelson', 'bb', 'Bulgaria', 16, 34000);

DELETE FROM SHIPS
WHERE NAME IN
	(SELECT SHIP FROM OUTCOMES
WHERE RESULT = 'sunk');

UPDATE CLASSES
SET bore = bore*2.5, DISPLACEMENT = DISPLACEMENT*1.1