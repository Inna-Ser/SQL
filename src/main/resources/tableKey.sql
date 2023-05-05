CREATE TABLE city
(
    city_id   BIGSERIAL   NOT NULL PRIMARY KEY,
    city_name VARCHAR(60) NOT NULL
);
INSERT INTO city(city_name)
VALUES ('St.Petersburg'),
       ('Kazan'),
       ('Orel'),
       ('Penza'),
       ('Vladivostok'),
       ('Krasnoiarsk'),
       ('Vologda');

-- ALTER TABLE peaple DROP COLUMN city_id;
SELECT *
FROM city;
SELECT *
FROM peaple;

ALTER TABLE peaple
    ADD COLUMN city_id INT;
ALTER TABLE peaple
    ADD FOREIGN KEY (city_id) REFERENCES city (city_id);
SELECT city_name, first_name, last_name
FROM city
         INNER JOIN peaple ON peaple.city_id = city.city_id;

