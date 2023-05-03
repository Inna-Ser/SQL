SELECT * FROM peaple;
INSERT INTO peaple (first_name, last_name, gender, age)
VALUES ('Dmitriy', 'Lavrov', 'male', 50);
INSERT INTO peaple (first_name, last_name, gender, age)
VALUES ('Larisa', 'Opilkina', 'female', 35);
INSERT INTO peaple (first_name, last_name, gender, age)
VALUES ('Alexandr', 'Borzov', 'male', 21);
SELECT * FROM peaple;
UPDATE peaple SET age = 55
WHERE id = 4;
UPDATE peaple SET age = 80
WHERE id = 5;
SELECT first_name AS Имя, last_name AS Фамилия From peaple;
SELECT * FROM peaple
WHERE age < 30 OR age > 50;
SELECT * FROM peaple
WHERE age NOT BETWEEN 30 AND 50;
SELECT * FROM peaple
WHERE age >= 30 AND age <= 50;
SELECT * FROM peaple
WHERE age BETWEEN 30 AND 50;
SELECT * FROM peaple
ORDER BY last_name DESC;
SELECT * FROM peaple
WHERE CHAR_Length(first_name) > 4;
UPDATE peaple SET first_name = 'Alexandr'
WHERE id = 6;
SELECT first_name AS Имя, SUM(age) AS Суммарный_возраст
FROM peaple GROUP BY first_name;
SELECT first_name, age FROM peaple
WHERE age = (SELECT MIN(age) FROM peaple);
SELECT first_name AS Имя, MAX(age) AS Максимальный_возраст FROM peaple
GROUP BY first_name
HAVING COUNT(first_name) > 1
ORDER BY MAX(age);

