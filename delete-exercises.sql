USE codeup_test_db;

SELECT 'Albums released after 1991' AS caption, a.* FROM albums a WHERE release_date > 1991;

SELECT * FROM albums WHERE artist = 'Whitney Houston';

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;

