Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Пароль пользователя postgres:
psql (14.7)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

postgres=# \c skypro
Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro=# SELECT * FROM peaple;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Nady       | Nechaeva  | female |  45
  2 | Oleg       | Rogov     | male   |  30
  3 | Ivan       | Ivanov    | male   |  17
(3 ёЄЁюъш)


skypro=# UPDATE peaple SET first_name='Katy', last_name='Borzova', gender='female', age=28 WHERE id=2;
UPDATE 1
    skypro=# SELECT * FROM peaple;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Nady       | Nechaeva  | female |  45
  3 | Ivan       | Ivanov    | male   |  17
  2 | Katy       | Borzova   | female |  28
(3 ёЄЁюъш)


skypro=# DELETE FROM peaple WHERE id=0;
DELETE 0
skypro=# SELECT * FROM peaple;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Nady       | Nechaeva  | female |  45
  3 | Ivan       | Ivanov    | male   |  17
  2 | Katy       | Borzova   | female |  28
(3 ёЄЁюъш)


skypro=# DELETE FROM peaple WHERE id=1;
DELETE 1
skypro=# SELECT * FROM peaple;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  3 | Ivan       | Ivanov    | male   |  17
  2 | Katy       | Borzova   | female |  28
(2 ёЄЁюъш)
