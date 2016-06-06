--use Ships1;

--CREATE TABLE Classes (

--	class VARCHAR(15),
--	type CHAR(2),
--	country VARCHAR(20),
--	numGuns INT,
--	bore INT,
--	displacement INT
--);

--CREATE TABLE Ships (

--	name VARCHAR(18),
--	class VARCHAR(15),
--	launched INT
--);

--CREATE TABLE Outcomes (

--	ship VARCHAR(18),
--	battle VARCHAR(25),
--	result VARCHAR (10)
--);

--CREATE TABLE Battles (

--	name VARCHAR(25),
--	date DATE
--);

--INSERT INTO Classes VALUES ('Bismarck','bb','Germany',8,15,42000),
--('Iowa','bb','USA',9,16,46000),
--('Kongo','bc','Japan',8,14,32000),
--('North Carolina','bb','USA',12,16,37000),
--('Renown','bc','Gt.Britain',6,15,32000),
--('Revenge','bb','Gt.Britain',8,15,29000),
--('Tennessee','bb','USA',12,14,32000),
--('Yamato','bb','Japan',9,18,65000);--INSERT INTO Battles VALUES ('Guadalcanal','19421115 00:00:00.000'),
--('North Atlantic','19410525 00:00:00.000'),
--('North Cape','19431226 00:00:00.000'),
--('Surigao Strait','19441025 00:00:00.000');
--INSERT INTO Ships VALUES ('California','Tennessee',1921),
--('Haruna','Kongo',1916),
--('Hiei','Kongo',1914),
--('Iowa','Iowa',1943),
--('Kirishima','Kongo',1915),
--('Kongo','Kongo',1913),
--('Missouri','Iowa',1944),
--('Musashi','Yamato',1942),
--('New Jersey','Iowa',1943),
--('North Carolina','North Carolina',1941),
--('Ramillies','Revenge',1917),
--('Renown','Renown',1916),
--('Repulse','Renown',1916),
--('Resolution','Renown',1916),
--('Revenge','Revenge',1916),
--('Royal Oak','Revenge',1916),
--('Royal Sovereign','Revenge',1916),
--('Tennessee','Tennessee',1920),
--('Washington','North Carolina',1941),
--('Wisconsin','Iowa',1944),
--('Yamato','Yamato',1941),
--('South Dakota','North Carolina',1941);--INSERT INTO Outcomes VALUES ('California','Surigao Strait','ok'),
-- ('Kirishima','Guadalcanal','sunk'),
-- ('South Dakota','Guadalcanal','damaged'),
-- ('Tennessee','Surigao Strait','ok'),
-- ('Washington','Guadalcanal','ok'),
--('California','Guadalcanal','damaged');--ALTER TABLE Classes ALTER COLUMN class VARCHAR(15) NOT NULL--ALTER TABLE Classes
--ADD CONSTRAINT pk_classes PRIMARY KEY(class);--ALTER TABLE Ships ALTER COLUMN name VARCHAR(18) NOT NULL--ALTER TABLE Ships--ADD CONSTRAINT pk_ships PRIMARY KEY(name);--ALTER TABLE Battles ALTER COLUMN name VARCHAR(25) NOT NULL

--ALTER TABLE Battles
--ADD CONSTRAINT pk_battles PRIMARY KEY(name)

--ALTER TABLE Ships
--ADD FOREIGN KEY(class)
--REFERENCES Classes(class)
--ON UPDATE CASCADE
--ON DELETE CASCADE;

--ALTER TABLE Outcomes
--ADD FOREIGN KEY(ship)
--REFERENCES Ships(name)
--ON UPDATE CASCADE
--ON DELETE CASCADE;

--ALTER TABLE Outcomes
--ADD FOREIGN KEY(battle)
--REFERENCES Battles(name)
--ON UPDATE CASCADE
--ON DELETE CASCADE;

--UPDATE Classes
--SET bore=16, displacement=3400
--WHERE class='Kongo'

--UPDATE Ships
--SET launched=1927
--WHERE class='Kongo'


use FLIGHTS;

--ALTER TABLE Airlines
--ADD CONSTRAINT uq_airlines UNIQUE(NAME);

--ALTER TABLE Airplanes
--ADD CONSTRAINT ck_seats
--CHECK(SEATS > 0);


--ALTER TABLE BOOKINGS
--ADD CONSTRAINT ck_dat
--CHECK (FLIGHT_DATE >= BOOKING_DATE);

--UPDATE BOOKINGS
--SET BOOKING_DATE = '2015-10-10', FLIGHT_DATE = '2013-07-02'
--WHERE AGENCY = 'Travel Two';
---- IMPOSSIBLE, it works!!!


--ALTER TABLE CUSTOMERS
--ADD CONSTRAINT ck_emailcc
--CHECK (EMAIL LIKE '%@%' AND EMAIL LIKE'%.%' AND LEN(EMAIL)>=6);

--UPDATE CUSTOMERS
--SET EMAIL = 'opa@abv.bg.'
--WHERE FNAME = 'Bogdan';
-- it works!!!


--ALTER TABLE BOOKINGS
--ADD CONSTRAINT ck_resstatus
--CHECK (STATUS IN (0, 1));

--UPDATE BOOKINGS
--SET STATUS = 2
--WHERE AGENCY = 'Aerofly';
----it works!!!


--ALTER TABLE FLIGHTS
--ADD CONSTRAINT ck_dur
--CHECK (FLIGHT_DURATION > 0);

--UPDATE FLIGHTS
--SET FLIGHT_DURATION = -3
--WHERE ARR_AIRPORT = 'SOF';
----IMPOSSIBLE, it works!!!


--ALTER TABLE AIRPORTS
--ADD CONSTRAINT uk_aircountry UNIQUE(NAME, COUNTRY);

--INSERT INTO AIRPORTS (CODE, NAME, COUNTRY, CITY)
--VALUES(18, 'Kavala', 'Greece', 'Kavala');
---- it works!!!



