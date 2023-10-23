use codeup_test_db;

select album_name from albums where release_date > 1991;

select album_name from albums where genre = 'disco';

select album_name from albums where artist_name = 'PINK FLOYD';

select * from albums;

delete from albums where release_date < 1991;

delete from albums where genre = 'disco';

delete from albums where artist_name = 'PINK FLOYD';

select * from albums;

