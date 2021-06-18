USE codeup_test_db;

SELECT record_name AS 'Names of albums by Pink Floyd in table' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'release date for Sgt. Pepper''s Lonely Hearts Club Band'  FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Genre for album Nevermind from Nirvana' FROM albums WHERE record_name = 'Nevermind';

SELECT record_name AS 'Albums released in the 1990s' FROM albums WHERE release_date BETWEEN '1990' AND '1999';

SELECT record_name AS 'Albums with less than 20mil certified sales' FROM albums WHERE sales < 20.0;

SELECT record_name AS 'Albums with genre of ''Rock''' FROM albums WHERE genre = 'Rock';



