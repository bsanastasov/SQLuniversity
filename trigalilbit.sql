use movies;
GO

CREATE VIEW title_year
AS
	SELECT m.TITLE, m.YEAR
	FROM MOVIE m
	WHERE m.STUDIONAME = 'Paramount';

CREATE TRIGGER t_insert_movie1 ON title_year
INSTEAD OF INSERT
AS
	INSERT INTO title_year(TITLE, YEAR)
	VALUES ('qko', 'cool');



