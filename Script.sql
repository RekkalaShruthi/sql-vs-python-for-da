select * from dataset_1;
select * from dataset_1 limit 10;
select DISTINCT passanger from dataset_1;
SELECT * FROM dataset_1 WHERE destination = 'Home';
SELECT * FROM dataset_1 order by coupon;
SELECT destination as 'Destination' from dataset_1;
SELECT * FROM dataset_1 -- This is a comment;

SELECT occupation FROM dataset_1 GROUP BY occupation;
SELECT weather, AVG(temperature) AS 'avg_temp' FROM dataset_1 GROUP BY weather;
SELECT weather, COUNT(temperature) AS 'count_temp' FROM dataset_1 GROUP BY weather;
SELECT weather, COUNT(DISTINCT temperature) AS 'count_dist_temp' FROM dataset_1 GROUP BY weather;
SELECT weather, SUM(temperature) AS 'sum_temp' FROM dataset_1 GROUP BY weather;
SELECT weather, MIN(temperature) AS 'min_temp' FROM dataset_1 GROUP BY weather;
SELECT weather, MAX(temperature) AS 'max_temp' FROM dataset_1 GROUP BY weather;
SELECT occupation FROM dataset_1 group by occupation HAVING occupation = 'Student';
SELECT * FROM dataset_1 union select * FROM table_to_union;
select * FROM table_to_union;
SELECT * FROM table_to_join;
SELECT DISTINCT destination from ( select * FROM dataset_1 union select * from table_to_union);
SELECT a.destination, a.time, b.part_of_day FROM dataset_1 a inner join table_to_join b on a.time=b.time;
SELECT destination, passanger from ( select * from dataset_1 where passanger='Alone');
SELECT DISTINCT time from dataset_1;
SELECT * FROM dataset_1 WHERE weather like 'sun%';
SELECT DISTINCT temperature from dataset_1 where temperature between 29 and 75;
SELECT occupation from dataset_1 where occupation in ('Sales & Related', 'Management');