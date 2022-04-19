USE codeup_test_db;

SHOW CREATE TABLE albums;

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 49.2, 'Pop, post-disco, funk, rock'),
       ('AC/DC', 'Back in Black', 1980, 29.5, 'Hard rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 32.4, 'R&B, soul, pop, soundtrack'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, glam rock, progressive rock'),
       ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 41.2, 'Country rock, soft rock, folk rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Progressive Rock'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft Rock'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, pop'),
       ('Various Artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 14.4, 'Rock and roll'),
       ('Michael Jackson', 'Bad', 1987, 21.1, 'Pop, rhythm and blues, funk, and rock'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.3, 'Alternative Rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.0, 'New jack swing, R&B and pop'),
       ('Celine Dion', 'Falling into You', 1996, 21.1, 'Pop, soft rock'),
       ('The Beatles', 'Sgt.Peppers Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Various Artists', 'Dirty Dancing', 1987, 17.9, 'Pop, rock, R&B'),
       ('Adele', '21', 2011, 26.4, 'Pop, soul'),
       ('Celine Dion', 'Lets Talk About Love',1997 ,19.3, 'Pop, soft rock'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy metal'),
       ('The Beatles', '1', 2000, 23.5, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop, disco'),
       ('Bruce Springsteen', 'Born in the U.S.A', 1984, 19.6, 'Heartland rock'),
       ('Madonna', 'THe Immaculate Collection', 1990, 19.5, 'Pop, dance'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Film score'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock, blues rock, soft rock'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, alternative rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin rock'),
       ('Guns N Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard rock'),
       ('Elton John', 'Goodbye Yellow Brick Road', 1973, 8.5, 'rock, pop rock, glam rock');

DESCRIBE albums;

SELECT * FROM albums;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt.Peppers Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT name FROM albums WHERE  release_date BETWEEN 1990 AND 1999;

SELECT name FROM albums WHERE sales < 20.0;

SELECT * FROM albums WHERE genre = 'Rock';

