
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

ALTER TABLE albums
    ADD UNIQUE (album_name, artist_name);

-- Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.

SELECT COUNT(*) as count
FROM roles
GROUP BY id
;

-- mysql> SELECT users.name as name, roles.name as role FROM users RIGHT JOIN roles ON users.role_id = roles.id;

SELECT distinct roles.name as role FROM roles RIGHT JOIN users ON users.role_id = roles.id;

SELECT distinct roles.name as role, count(*) as count
FROM roles
RIGHT JOIN users ON users.role_id = roles.id
group by role;

SELECT distinct roles.name as role, count(*) as count
FROM users
Right JOIN roles ON users.role_id = roles.id
GROUP BY id
;


SELECT users.name as name, roles.name as role
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT distinct roles.name as role, count(*) as count
FROM roles
    RIGHT JOIN users ON users.role_id = roles.id group by role;

SELECT roles.name as role, count(*) as count
FROM roles
JOIN users ON users.role_id = roles.id group by role;