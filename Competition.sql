	---сreate---
Create TABLE Competition
(competition_id INTEGER NOT NULL,
competition_name VARCHAR(50) NOT NULL,	
world_record TIME, 
set_date DATE,
PRIMARY KEY (competition_id));

Create TABLE Sportsman
(sportsman_id INTEGER NOT NULL,
 sportsman_name VARCHAR(30),
 ranks INTEGER,
 year_of_birth INTEGER,
personal_record TIME, 
 country VARCHAR(30),
PRIMARY KEY(sportsman_id));

Create TABLE Result
(competition_id INTEGER NOT NULL,
sportsman_id INTEGER NOT NULL,	
results TIME, 
city VARCHAR(30),
hold_date DATE,
PRIMARY KEY(competition_id, sportsman_id),
FOREIGN KEY (competition_id) REFERENCES Competition (competition_id),
FOREIGN KEY (sportsman_id) REFERENCES Sportsman (sportsman_id));

	---first table----
	INSERT INTO Competition
VALUES
	(0101011, 'Чемпионат Мира по бегу 100m', '00:00:9.58', '2020-06-06' ),
	(0102011, 'Чемпионат Мира по бегу 200m', '00:00:19.19', '2016-09-03'  ),
	(0104011, 'Чемпионат Мира по бегу 400m', '00:00:43.03', '2013-01-11'  ),
	(0111011, 'Чемпионат Мира по бегу c барьерами', '00:00:15.03', '2020-06-16'),
	(0108011, 'Чемпионат Мира по бегу 800m', '00:01:40.91', '2017-08-31'  ),
	(0110011, 'Чемпионат Мира по  бегу 1000m', '00:02:11.00', '2020-06-06'  ),
	(0150012, 'Чемпионат Мира по ходьбе 50000m', '03:32:00.00', '2020-08-03'  ),
	(0201011, 'Чемпионат Европы по бегу 100m', '00:00:9.58', '2020-06-06' ),
	(0202011, 'Чемпионат Европы по бегу 200m', '00:00:19.19', '2016-09-03'  ),
	(0204011, 'Чемпионат Европы по бегу 400m', '00:00:43.03', '2013-01-11'  ),
	(0208011, 'Чемпионат Европы по бегу 800m', '00:01:40.91', '2017-08-31'  ),
	(0210011, 'Чемпионат Европы по бегу 1000m', '00:02:11.00', '2020-06-06'  ),
	(0320011,'Чемпионат России по бегу 2000m', '00:05:37.00', '2014-04-12'  ),
	(0321011, 'Чемпионат России по бегу 21000m', '00:58:01.00', '2010-05-15'),
	(0342011, 'Чемпионат России по бегу 42000m', '01:59:40.00', '2010-05-15'),
	(0250012, 'Чемпионат Европы по ходьбе 50000m', '03:32:00.00', '2020-08-03'),
	(0320021,'Чемпионат России по бегу 2000m', '00:05:37.00', '2014-04-12'  ),
	(0321021, 'Чемпионат России по бегу 21000m', '00:58:01.00', '2010-05-15'),
	(0342021, 'Чемпионат России по бегу 42000m', '01:59:40.00', '2010-05-15'),
	(0401011, 'Чемпионат Региона по бегу 100m', '00:00:9.58', '2020-06-06' ),
	(0402011, 'Чемпионат Региона по бегу 200m', '00:00:19.19', '2016-09-03'  ),
	(0404011, 'Чемпионат Региона по бегу 400m', '00:00:43.03', '2013-01-11'  ),
	(0411011, 'Чемпионат Региона по бегу c барьерами', '00:00:15.9', '2015-02-12'  ),
	(0450012, 'Чемпионат Региона по ходьбе 50000m', '03:32:00.00', '2020-08-03')


                   ---second table--
	INSERT INTO Sportsman
VALUES
	(1,'Denis Ryazanov', 1, 1997,'00:00:9.58','Russia' ),
	(2,'Oleg Ivanov', 1, 1995,'00:00:9.60','Russia' ),
	(3,'Maxim Tcvetkov', 2, 1989,'00:00:9.88','Russia' ),
	(4,'Michael Rivz', 2, 2000,'00:00:9.99','Germany' ),
	(5,'Alexandro Domingez', 1, 1998,'00:00:9.80','Italy' )	,
	(6,'Ivan Simonov', 3, 1998,'00:00:10.20','Russia' ),
	(7,'Andre Kozlov', 2, 1999,'00:00:9.97','Russia' ),
	(8,'Luka Margin', 2, 1990,'00:00:9.83','Italy' ),
	(9,'Andre Kozlov', 2, 1999,'00:00:9.97','Russia' ),
	(10,'Andre Soldado', 3, 1990,'00:00:10.01','Brazil' ),	
	
	(11,'Hulio Andre', 1, 1990,'00:00:20.58','Spain' ),
	(12,'Lionel Bruno', 3, 1994,'00:00:21.60','Spain' ),
	(13,'Max Mayer', 2, 1997,'00:00:20.88','Germany' ),
	(14,'Rick Martens', 1, 2000,'00:00:20.05','Germany' ),
	(15,'Antua de Bru', 3, 1989,'00:00:22.80','France' )	,
	(16,'Marten Fourcade', 2, 1998,'00:00:20.50','France' ),
	(17,'Sebastian Je', 1, 1999,'00:00:20.10','France' ),
	(18,'Dio Ange', 2, 1990,'00:00:20.88','Egypt' ),
	(19,'Feno Taker', 2, 1990,'00:00:21.99','Egypt' ),
	(20,'Gerab Gety', 5, 1990,'00:00:25.01','Egypt' )
                    ---third table--
 	INSERT INTO Result
VALUES

 	(0101011,1,'00:00:9.58', 'Moscow','2020-06-06'),
	(0101011,2,'00:00:9.80', 'Moscow','2020-06-06'),
 	(0101011,3,'00:00:9.92', 'Moscow','2020-06-06'),
 	(0101011,4,'00:00:9.99', 'Moscow','2020-06-06'),
 	(0101011,5,'00:00:9.82', 'Moscow','2020-06-06'),
	(0101011,8,'00:00:11.11', 'Moscow','2020-06-06'),
	(0101011,9,'00:00:10.12', 'Moscow','2020-06-06'),
	
	(0401011,1,'00:00:9.88', 'Rostov','2020-07-08'),
 	(0401011,2,'00:00:9.78', 'Rostov','2020-07-08'),
 	(0401011,6,'00:00:10.20', 'Rostov','2020-07-08'),
 	(0401011,7,'00:00:9.97', 'Rostov','2020-07-08'),
 
   	(0201011,1,'00:00:9.80', 'Milan','2020-09-08'),
 	(0201011,3,'00:00:10.08', 'Milan','2020-09-08'),
 	(0201011,4,'00:00:10.01', 'Milan','2020-09-08'),
 	(0201011,5,'00:00:9.93', 'Milan','2020-09-08')

 
                        --requests--
-- Выдайте всю информацию о спортсменах из таблицы sportsman.
SELECT * FROM SPORTSMAN;
--- Выдайте наименование и мировые результаты по всем соревнованиям.
SELECT competition_name, world_record FROM COMPETITION;
-- Выберите имена всех спортсменов, которые родились в 1990 году.
SELECT sportsman_name FROM SPORTSMAN WHERE year_of_birth = 1990;
-- Выберите наименование и мировые результаты по всем соревнованиям, установленные 12-05-2010 или 15-05-2010.
SELECT competition_name, world_record FROM RESULT WHERE  set_date = '2010-05-12' OR set_date = '2010-05-15';
--Выберите дату проведения всех соревнований, которые проводились в Москве и полученные на них результаты равны 10 секунд.
SELECT hold_date FROM RESULT WHERE city = 'Moscow' AND (results BETWEEN '00:00:10.00' AND '00:00:10.99');
-- Выберите имена всех спортсменов, у которых персональный рекорд не равен 25 с.
SELECT sportsman_name FROM SPORTSMAN WHERE (personal_record NOT BETWEEN '00:00:25.00' AND '00:00:25.99');
-- Выберите названия всех соревнований, у которых мировой рекорд равен 15 с и дата установки рекорда не равна 12-02-2015.
SELECT competition_name FROM COMPETITION WHERE  (set_date <> '2015-02-12' AND 
												 (world_record BETWEEN '00:00:15.00' AND '00:00:15.99'));
--Выберите города проведения соревнований, где результаты принадлежат множеству {13, 25, 17, 9}.
SELECT DISTINCT city FROM RESULT WHERE  (results BETWEEN '00:00:13.00' AND '00:00:13.99') OR 
(results BETWEEN '00:00:25.00' AND '00:00:25.99') OR (results BETWEEN '00:00:17.00' AND '00:00:17.99')
OR (results BETWEEN '00:00:9.00' AND '00:00:9.99');
-- Выберите имена всех спортсменов, у которых год рождения 2000 и разряд не принадлежит множеству {3, 7, 9}.
SELECT sportsman_name FROM SPORTSMAN WHERE year_of_birth = 2000 AND (ranks not in (3,7,9))
-- Выберите дату проведения всех соревнований, у которых город проведения начинается с буквы "М".
SELECT DISTINCT hold_date from RESULT WHERE city LIKE 'M%';
-- Выберите имена всех спортсменов, у которых имена начинаются с буквы "М" и год рождения не заканчивается на "6".
SELECT sportsman_name from SPORTSMAN WHERE (sportsman_name LIKE 'M%') AND  (year_of_birth NOT LIKE '%___6-__-__') --
-- Выберите наименования всех соревнований, у которых в названии есть слово "международные".
SELECT competition_name from COMPETITION WHERE competition_name LIKE('%Мира%')
-- Выберите годы рождения всех спортсменов без повторений.
SELECT DISTINCT year_of_birth from SPORTSMAN ORDER BY year_of_birth ASC
--- Найдите количество результатов, полученных 06-06-2020.
SELECT  COUNT(results) from RESULT WHERE hold_date = '2020-06-06'
-- Вычислите максимальный(самый быстрый) результат, полученный в Москве.
SELECT MIN(results) from RESULT WHERE city = 'Moscow' 
-- Вычислите минимальный(самый молодой) год рождения спортсменов, которые имеют 1 разряд.
SELECT MAX(year_of_birth) from SPORTSMAN WHERE ranks = 1;
--- Определите имена спортсменов, у которых личные рекорды совпадают с результатами, установленными 2020-06-06.
SELECT SPORTSMAN.sportsman_name
	FROM SPORTSMAN
	INNER JOIN RESULT ON 
		SPORTSMAN.sportsman_id = RESULT.sportsman_id WHERE SPORTSMAN.personal_record = RESULT.results
-- Выведите наименования соревнований, у которых дата установления мирового рекорда 
--совпадает с датой проведения соревнований в - Москве 2020-06-06.
SELECT DISTINCT COMPETITION.competition_name
	FROM COMPETITION
	INNER JOIN RESULT ON 
		COMPETITION.competition_id = RESULT.competition_id WHERE COMPETITION.set_date = RESULT.hold_date
		AND RESULT.hold_date = '2020-06-06'
-- Вычислите средний результат каждого из спортсменов.
SELECT   SPORTSMAN.sportsman_name, AVG(RESULT.results)
	FROM RESULT
	INNER JOIN SPORTSMAN ON
	SPORTSMAN.sportsman_id = RESULT.sportsman_id GROUP BY (SPORTSMAN.sportsman_name)
-- Выведите годы рождения спортсменов, у которых результат, показанный в Москве выше среднего по всем спортсменам.
SELECT SPORTSMAN.year_of_birth
	FROM RESULT
	INNER JOIN SPORTSMAN ON
	SPORTSMAN.sportsman_id = RESULT.sportsman_id 
	WHERE RESULT.results < (SELECT    AVG(RESULT.results) as av_res FROM RESULT) AND RESULT.city = 'Moscow'  
-- Найдите минимальный разряд спортсменов, которые установили мировой рекорд.
SELECT MAX(SPORTSMAN.ranks)
	FROM SPORTSMAN 
	INNER JOIN RESULT ON
	SPORTSMAN.sportsman_id = RESULT.sportsman_id 
	INNER JOIN COMPETITION ON RESULT.competition_id = COMPETITION.competition_id
	WHERE SPORTSMAN.personal_record = COMPETITION.world_record
-- Определите, спортсмены какой страны участвовали в соревнованиях больше всего.
SELECT SPORTSMAN.country, COUNT(SPORTSMAN.country) as country_count
	FROM SPORTSMAN
	INNER JOIN RESULT ON
	SPORTSMAN.sportsman_id = RESULT.sportsman_id 
	GROUP BY (SPORTSMAN.country)
	-- Выведите данные о спортсменах, у которых персональный рекорд совпадает с мировым.
SELECT DISTINCT SPORTSMAN.sportsman_id, SPORTSMAN.sportsman_name,SPORTSMAN.ranks, SPORTSMAN.year_of_birth, SPORTSMAN.personal_record, SPORTSMAN.country   
	FROM SPORTSMAN
	INNER JOIN RESULT ON
	SPORTSMAN.sportsman_id = RESULT.sportsman_id 
	INNER JOIN COMPETITION ON RESULT.competition_id = COMPETITION.competition_id
		WHERE SPORTSMAN.personal_record = COMPETITION.world_record
-- Выведите список спортсменов в виде 'Спортсмен ' ['имя спортсмена'] 'показал результат' ['результат'] 'в городе' ['город']
SELECT  'Спортсмен ' ||SPORTSMAN.sportsman_name|| ' показал результат  ' ||RESULT.results||' в городе ' ||RESULT.city||'' 
	FROM RESULT
	INNER JOIN SPORTSMAN ON
	SPORTSMAN.sportsman_id = RESULT.sportsman_id
-- Выведите города, в которых были установлены мировые рекорды.
SELECT RESULT.city
	FROM RESULT
	INNER JOIN COMPETITION ON
	COMPETITION.competition_id = RESULT.competition_id 
		WHERE COMPETITION.world_record = RESULT.results
-- Удалите все результаты соревнований в Москве, участники которых родились не позже 1990 г.
DELETE  FROM RESULT
	WHERE RESULT.sportsman_id in (SELECT SPORTSMAN.sportsman_id FROM SPORTSMAN INNER JOIN RESULT ON
SPORTSMAN.sportsman_id = RESULT.sportsman_id 
WHERE RESULT.city = 'Moscow' and SPORTSMAN.year_of_birth < 1990 )
-- Удалите все соревнования, у которых результат равен 19 с.
DELETE FROM COMPETITION
WHERE (world_record BETWEEN '00:00:19.00' AND '00:00:19.99');

-- Удалите все результаты спортсменов, которые родились в 1998 году.
DELETE FROM RESULT 
WHERE sportsman_id IN (SELECT RESULT.sportsman_id FROM RESULT 
			   INNER JOIN SPORTSMAN ON
			   SPORTSMAN.sportsman_id = RESULT.sportsman_id 
               		WHERE SPORTSMAN.year_of_birth = 1998);
-- Измените название соревнований с 'Бег' на 'Бег с препятствиями'
UPDATE COMPETITION
	SET competition_name = 'Бег с препятствиями'
	WHERE competition_name LIKE 'по бегу%'
-- Выведите имена всех спортсменов, у которых разряд ниже среднего разряда всех спортсменов, родившихся в 2000 году.
SELECT SPORTSMAN.sportsman_name FROM SPORTSMAN
WHERE SPORTSMAN.ranks > (SELECT AVG(SPORTSMAN.ranks) FROM SPORTSMAN WHERE SPORTSMAN.year_of_birth = 2000)
-- Измените страну у спортсменов, у которых разряд равен 1 или 2, с Италии на Россию.
UPDATE SPORTSMAN
	SET country = 
		'ITALY'
	WHERE country = 'Russia' AND (ranks = 1 OR ranks = 2)
-- Измените дату проведения всех соревнований, проходящих в Москве на 4 дня вперед.
UPDATE RESULT 
	SET results = results + interval '4 days'
	WHERE (city = 'Moscow')
-- Вычислите возраст спортсменов, которые участвовали в соревнованиях в Москве.
SELECT (2020 - SPORTSMAN.year_of_birth) as age
	FROM SPORTSMAN 
	INNER JOIN RESULT ON
	SPORTSMAN.sportsman_id = RESULT.sportsman_id 
		WHERE RESULT.CITY = 'Moscow'

UPDATE SPORTSMAN
	SET ranks = 1 WHERE (SELECT SPORTSMAN.ranks  
						 	FROM SPORTSMAN  INNER JOIN RESULT ON
							SPORTSMAN.sportsman_id = RESULT.sportsman_id 
							INNER JOIN COMPETITION ON RESULT.competition_id = COMPETITION.competition_id
								WHERE SPORTSMAN.personal_record= COMPETITION.world_record)
	

	


	



	