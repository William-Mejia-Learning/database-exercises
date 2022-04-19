USE codeup_test_db;

SELECT name FROM albums;

SELECT name FROM albums WHERE release_date < 1980;

SELECT name FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums a -- a alias for the table
SET sales = (sales * 10);

SELECT * FROM albums;

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

