USE codeup_test_db;

SELECT record_name AS 'All albums on table' FROM albums;
SELECT record_name AS 'Albums released before 1980' FROM albums WHERE release_date < 1980;
SELECT record_name AS 'Albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET
WHERE
