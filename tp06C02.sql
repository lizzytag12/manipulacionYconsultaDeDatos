-- microdesafio 1 -- 
INSERT INTO `movies_db`.`genres` (`name`, `ranking`, `active`) VALUES ('investigacion', '13', '1');
UPDATE `movies_db`.`genres` SET `name` = 'investigacion cientifica ' WHERE (`id` = '13');
DELETE FROM `movies_db`.`genres` WHERE (`id` = '13');
SELECT * FROM movies_db.movies;
SELECT  first_name, last_name, rating FROM movies_db.actors;
SELECT title FROM movies_db.series;

-- microdesafio2 -- 

SELECT first_name, last_name FROM movies_db.actors WHERE rating > 7.5;
SELECT title, rating, awards FROM movies_db.movies WHERE rating > 7.5 AND awards > 2;
SELECT title, rating  FROM movies_db.movies ORDER BY rating ASC;

-- microdesafio 3 --

SELECT title FROM movies_db.movies LIMIT 3;
SELECT title,rating FROM movies_db.movies WHERE rating > 8 LIMIT 5 ;
SELECT id, title, rating FROM movies_db.movies order by rating Desc limit 5 offset 5;
SELECT first_name, last_name FROM movies_db.actors order by first_name limit 10;
SELECT first_name, last_name FROM movies_db.actors order by first_name limit 10 offset 30 ;

-- microdesafio 4 --

SELECT title FROM movies_db.movies where title like "harry potter%";
SELECT first_name FROM movies_db.actors where first_name like "Sam%";
SELECT title FROM movies_db.movies WHERE
    (
        (release_date >= '2004-01-01 00:00')
        AND
        (release_date <= '2008-06-05 00:00')
    );

