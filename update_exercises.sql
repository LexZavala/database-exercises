USE codeup_test_db;

SELECT record_name AS 'All albums on table' FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT *  FROM albums;

SELECT record_name AS 'Albums released before 1980' FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = '1800'
WHERE release_date <1980;
SELECT * FROM albums;

SELECT record_name AS 'Albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;



