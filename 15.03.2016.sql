
--USE MOVIES


--SELECT M.TITLE, ME.NAME
--FROM MOVIEEXEC ME LEFT JOIN MOVIE M
--ON ME.CERT# = M.PRODUCERC#
--WHERE M.PRODUCERC# IN (SELECT PRODUCERC#
--		FROM MOVIE
--		WHERE TITLE = 'STAR WARS');


--SELECT  DISTINCT ME.NAME
--FROM MOVIEEXEC ME INNER JOIN MOVIE M
--ON ME.CERT# = M.PRODUCERC#
--JOIN STARSIN S
--ON M.TITLE = S.MOVIETITLE
--WHERE S.STARNAME = 'Harrison Ford';


--SELECT DISTINCT M.STUDIONAME,S.STARNAME
--FROM MOVIE M INNER JOIN STARSIN S
--ON M.TITLE = S.MOVIETITLE

--SELECT S.STARNAME, ME.NETWORTH, M.TITLE
--FROM MOVIEEXEC ME INNER JOIN MOVIE M
--ON ME.CERT# = M.PRODUCERC#
--INNER JOIN STARSIN S
--ON M.TITLE = S.MOVIETITLE
--WHERE ME.NETWORTH >= ALL (SELECT NETWORTH
--							FROM MOVIEEXEC);

--SELECT MS.NAME, S.MOVIETITLE
--FROM STARSIN S RIGHT JOIN MOVIESTAR MS
--ON S.STARNAME = MS.NAME
--WHERE S.MOVIETITLE IS NULL;


--USE PC

--SELECT P.model, P.maker, P.type
--FROM PRODUCT P LEFT JOIN LAPTOP L
--ON P.MODEL = L.MODEL
--LEFT JOIN PRINTER PR
--ON P.MODEL = PR.MODEL
--LEFT JOIN PC C
--ON P.MODEL = C.MODEL
--WHERE L.MODEL IS NULL AND PR.MODEL IS NULL AND C.MODEL IS NULL;

--SELECT DISTINCT P.MAKER
--FROM PRODUCT P
--WHERE P.TYPE = 'PRINTER' AND P.MAKER IN (SELECT MAKER
--										FROM PRODUCT
--										WHERE TYPE = 'LAPTOP');

--SELECT DISTINCT L.HD
--FROM LAPTOP L JOIN LAPTOP P
--ON L.HD = P.HD AND L.MODEL > P.MODEL;



--USE SHIPS

--1--
--SELECT *
--FROM SHIPS S JOIN CLASSES C
--ON S.CLASS = C.CLASS


--2--
--SELECT *
--FROM SHIPS S RIGHT JOIN CLASSES C
--ON S.CLASS = C.CLASS


--3--
--SELECT C.COUNTRY, S.NAME
--FROM CLASSES C JOIN SHIPS S
--ON C.CLASS = S.CLASS
--WHERE S.NAME NOT IN (SELECT SHIP
--					FROM OUTCOMES)
--ORDER BY C.COUNTRY;


--4--
--SELECT S.NAME  ShipName
--FROM CLASSES C JOIN SHIPS S
--ON C.CLASS = S.CLASS
--WHERE C.NUMGUNS >= 7 AND S.LAUNCHED = 1916;


--5--
--SELECT T.SHIP, B.NAME, B.DATE
--FROM OUTCOMES T JOIN BATTLES B
--ON T.BATTLE = B.NAME
--WHERE T.RESULT = 'SUNK';


--6--
--SELECT S.NAME, C.DISPLACEMENT, S.LAUNCHED
--FROM CLASSES C JOIN SHIPS S
--ON C.CLASS = S.CLASS
--WHERE C.CLASS = S.NAME;


--7--
--SELECT *
--FROM CLASSES C  LEFT JOIN SHIPS S
--ON C.CLASS = S.CLASS
--WHERE S.LAUNCHED IS NULL;


--8--
--SELECT S.NAME, C.DISPLACEMENT, C.NUMGUNS, T.RESULT
--FROM CLASSES C JOIN SHIPS S
--ON C.CLASS = S.CLASS
--JOIN OUTCOMES T
--ON S.NAME = T.SHIP
--WHERE T.BATTLE = 'North Atlantic';

