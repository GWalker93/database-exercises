
use codeup_test_db;

drop table if exists albums;

CREATE TABLE albums
    (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist_name VARCHAR(50) NOT NULL,
        album_name VARCHAR(50) NOT NULL,
        release_date int (4) NOT NULL,
        genre VARCHAR(50) NOT NULL,
        sales DECIMAL(6,1) NOT NULL,
        PRIMARY KEY (id)
    );