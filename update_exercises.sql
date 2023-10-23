use codeup_test_db;

select album_name from albums;

select album_name from albums where release_date < 1980;

select album_name from albums where artist_name = 'Michael Jackson';

UPDATE albums SET sales = sales * 10;

UPDATE albums SET release_date = release_date - 180 WHERE release_date < 1980;

UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';

select * from albums;