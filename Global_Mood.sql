DROP TABLE IF EXISTS sad;
DROP TABLE IF EXISTS happy;

CREATE TABLE sad (
	id serial primary key,
	country varchar,
	no_of_suicides int,
	population int,
	suicides_per_100k float,
	gdp_per_capita int
);

CREATE TABLE happy (
	id serial primary key,
	country varchar,
	Happiness_Rank int,
	Happiness_Score float,
	Freedom float
);

SELECT * FROM sad;

SELECT * FROM happy;

SELECT
	s.country,
	s.population,
	s.suicides_per_100k,
	h.happiness_rank
FROM
	sad AS s
	JOIN 
		happy AS h
		ON h.country = s.country;












