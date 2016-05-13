--USE Movies

--SELECT NAME
--FROM MOVIESTAR
--WHERE NAME IN (SELECT NAME
--			  FROM MOVIEEXEC
--			  WHERE NETWORTH>10000000) AND GENDER = 'F';


--SELECT NAME
--FROM MOVIESTAR
--WHERE NAME NOT IN(SELECT NAME
--				FROM MOVIEEXEC);

--SELECT TITLE
--FROM  MOVIE MS2
--WHERE MS2.TITLE = 'STAR WARS' AND MS2.LENGTH < ANY (SELECT MS1.LENGTH
--												FROM MOVIE MS1
--												);


--USE PC

--1--
--SELECT MAKER
--FROM PRODUCT
--WHERE MODEL IN (SELECT MODEL
--				FROM PC
--				WHERE SPEED>500);

--2--
--SELECT CODE, MODEL, PRICE
--FROM PRINTER P
--WHERE P.PRICE >= ALL(SELECT PRICE
--					FROM PRINTER);

--3--
--SELECT *
--FROM LAPTOP L
--WHERE L.SPEED < ALL (SELECT SPEED
--					FROM PC);


--4--
--SELECT P.MODEL,PT.PRICE
--FROM PRODUCT P JOIN (SELECT MODEL, PRICE FROM LAPTOP	UNION ALL
--					SELECT MODEL, PRICE FROM PC			UNION ALL
--					SELECT MODEL, PRICE FROM PRINTER) PT
--ON P.MODEL = PT.MODEL
--WHERE PT.PRICE >= ALL(SELECT PRICE FROM LAPTOP UNION ALL
--					  SELECT PRICE FROM PC	   UNION ALL
--					  SELECT PRICE FROM PRINTER);


--5--
--SELECT P.MAKER, PR.PRICE
--FROM PRODUCT P JOIN PRINTER PR
--ON P.MODEL = PR.MODEL
--WHERE COLOR = 'Y' AND PRICE <= ALL (SELECT PRICE
--						FROM PRINTER
--						WHERE COLOR = 'Y'
--						);


--6--
--SELECT MAKER
--FROM PRODUCT P JOIN PC C
--ON P.MODEL = C.MODEL
--WHERE C.RAM <= ALL(SELECT RAM FROM PC)

--AND C.SPEED >= ALL (SELECT SPEED FROM PC
--					WHERE C.RAM = RAM);


--USE SHIPS

--1--
--SELECT DISTINCT C.COUNTRY
--FROM CLASSES C
--WHERE C.NUMGUNS >= ALL (SELECT NUMGUNS
--						FROM CLASSES);



--2--
--SELECT DISTINCT S.CLASS
--FROM SHIPS S JOIN OUTCOMES T
--ON S.NAME = T.SHIP
--WHERE T.RESULT = 'SUNK';


--3--
--SELECT S.NAME, C.CLASS
--FROM CLASSES C JOIN SHIPS S
--ON C.CLASS = S.CLASS
--WHERE C.BORE = 16;


--4--
--SELECT T.BATTLE
--FROM SHIPS S JOIN OUTCOMES T
--ON S.NAME = T.SHIP
--WHERE S.CLASS = 'KONGO';


--5--
--SELECT C.CLASS, S.NAME
--FROM CLASSES C JOIN SHIPS S
--ON C.CLASS = S.CLASS
--WHERE C.NUMGUNS >= ALL (SELECT NUMGUNS
--					FROM CLASSES
--					WHERE C.BORE = BORE);



				