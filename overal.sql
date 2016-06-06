use ships;
GO

SELECT BATTLE,COUNT(BATTLE) number_of_ships
FROM OUTCOMES
GROUP BY BATTLE
HAVING COUNT(BATTLE) > ALL (SELECT COUNT(BATTLE) FROM OUTCOMES WHERE BATTLE='Guadalcanal')


CREATE VIEW biggest_battles
AS
	SELECT BATTLE,COUNT(BATTLE) number_of_ships
	FROM OUTCOMES
	GROUP BY BATTLE
	HAVING COUNT(BATTLE) > ALL (SELECT COUNT(BATTLE) FROM OUTCOMES WHERE BATTLE='Guadalcanal')



UPDATE CLASSES
SET COUNTRY = 'USA'
WHERE type ='bb';

	SELECT SHIP, BATTLE,COUNT(BATTLE) number_of_ships, COUNT(COUNTRY) number_of_countries
	FROM OUTCOMES o JOIN SHIPS s
	ON o.SHIP = s.NAME
	JOIN CLASSES c
	ON s.CLASS = c.CLASS
	GROUP BY BATTLE, SHIP
	HAVING COUNT(COUNTRY) >= 2;

INSERT INTO OUTCOMES (SHIP, BATTLE, RESULT )
VALUES ('Missouri','Surigao Strait', 'sunk'),
 ('Missouri','North Cape', 'sunk'),
 ( 'Missouri','North Atlantic', 'ok'),
 ('Carolina', 'Mick', 'ok'),
 ('Yokogawa', 'Yami','sunk');


DELETE o
FROM OUTCOMES o JOIN (SELECT SHIP ships
					FROM OUTCOMES
					GROUP BY SHIP
					HAVING COUNT(SHIP) = 1) s
					ON o.SHIP = s.ships;
					

INSERT INTO OUTCOMES (SHIP, BATTLE, RESULT )
VALUES ('Missouri','Surigao Strait', 'sunk'),
 ('Missouri','North Cape', 'sunk'),
 ( 'Missouri','North Atlantic', 'ok');DELETE oFROM OUTCOMES o JOIN(SELECT SHIP ships					FROM OUTCOMES					WHERE RESULT='sunk'					GROUP BY SHIP					HAVING COUNT(SHIP) >= 2) s					on o.SHIP = s.ships;






