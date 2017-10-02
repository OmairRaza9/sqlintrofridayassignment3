
Find all the robots from Star Wars.
\d robots
SELECT from robots;
SELECT * from robots;
SELECT * from robots where source = 'Star Wars'
 name |  source   | personality | id
------+-----------+-------------+----
 C3PO | Star Wars | anxious     |  4
 R2D2 | Star Wars | loyal       |  8
(2 rows)


2. Find the robot with an "anxious" personality.

SELECT * from robots where personality = 'anxious';
C3PO | Star Wars | anxious     |  4




3. Find all recipes that are nut free.

SELECT id, name, nut_free from recipes;
SELECT id, name, nut_free from recipes where nut_free = true;

 id |                   name                    | nut_free
----+-------------------------------------------+----------
  3 | Butternut Squash Bake                     | t
  4 | Vegetarian Bibimbap                       | t
  5 | French Veggie Loaf                        | t
  6 | Quinoa and Black Beans                    | t
  7 | Juicy Roasted Chicken                     | t
  8 | Garlic Green Beans                        | t
  9 | Stout Slow Cooker Corned Beef and Veggies | t
(7 rows)


4) Count the number of recipes that are gluten free but not vegetarian.
SELECT count(id) from recipes where gluten_free = true AND  vegetarian = false;
 count
-------
     2
(1 row)




5) Find the animal with the most legs.

SELECT name, number_of_legs, id FROM animals ORDER BY number_of_legs desc LIMIT 1;
  name   | number_of_legs | id
---------+----------------+----
 octopus |              8 |  3
(1 row)



6) Find the board game that takes the least amount of time to play.

SELECT * FROM board_games;

SELECT name, mins_to_play, id FROM board_games ORDER BY mins_to_play asc LIMIT 5;
          name          | mins_to_play | id
------------------------+--------------+----
 Quixo                  |           15 | 11
 Sushi Go               |           15 | 10
 Quarto                 |           20 |  4
 Cards Against Humanity |           30 |  8
 7 Wonders              |           30 |  5
(5 rows)


7) Find the recipe that takes the most time to prepare.

SSELECT id, name, minutes_required FROM recipes ORDER BY minutes_required  desc LIMIT 3;
 id |                   name                    | minutes_required
----+-------------------------------------------+------------------
  9 | Stout Slow Cooker Corned Beef and Veggies |              390
  5 | French Vegie Loaf                        |              105
  7 | Juicy Roasted Chicken                     |              100
(3 rows)g


8) Find all the robots whose name starts with the letter M.

SELECT * FROM robots LIMIT 10;
SELECT * FROM robots WHERE name LIKE ‘m%’;

9)Count the number of board games that can be played by 8 people.

SELECT * FROM board_games LIMIT 3;

SELECT name, id, max_players FROM board_games where max_players = 7;
   name    | id | max_players
-----------+----+-------------
 7 Wonders |  5 |           7
 Bohnanza  |  7 |           7
 7 Wonders | 12 |           7
(3 rows)
***there is a dupe but the id is different


10. Find all animals that are swimming and egg-laying.

SELECT name, id, swimming, egg_laying FROM animals WHERE swimming = true AND egg_laying = true;
  name   | id | swimming | egg_laying
---------+----+----------+------------
 octopus |  3 | t        | t
 duck    |  4 | t        | t
(2 rows)


11) Find all animals that are swimming and egg-laying but not flying.

SELECT * FROM animals LIMIT 3;
SELECT name, swimming, egg_laying, flying FROM animals WHERE swimming = true AND egg_laying = true AND flying = false;
  name   | swimming | egg_laying | flying
---------+----------+------------+--------
 octopus | t        | t          | f
(1 row)

12) Find the board game that supports the largest number of people.

SELECT * FROM board_games LIMIT 5;
SELECT name, id, max_players FROM board_games ORDER BY max_players desc LIMIT 3;
          name          | id | max_players
------------------------+----+-------------
 Cards Against Humanity |  8 |          30
 Game of Things         |  9 |          15
 Arkham Horror          |  1 |           8
(3 rows)
