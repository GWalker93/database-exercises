use codeup_test_db;

Select album_name FROM  albums;

SELECT release_date from  albums Where album_name ='Sgt. Pepper''s Lonely Hearts Club Band';

select genre from albums Where album_name ='21';

select album_name from albums Where release_date BETWEEN 1990 and 1999;

select album_name from albums Where sales < 20;

select album_name from albums Where genre = 'Rock';

