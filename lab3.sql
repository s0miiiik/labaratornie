1)Отримати список міст України які закінчуються на ‘ськ’

SELECT id, name 
FROM cities
WHERE name LIKE '%ськ';

2)Отримати список міст України у назві яких є  ‘донец’

SELECT id, name 
FROM cities
WHERE name LIKE '%донец%';

3)Отримати список міст з населенням більше ніж 100 000 з назвою у вигляді НАЗВА_МІСТА (РЕГІОН).
 Результат відсортувати за алфавітом

SELECT CONCAT(name, ' (', region, ')') AS city_region
FROM cities
WHERE population > 100000
ORDER BY name ASC;

4)Отримати перші 10 міст України (за населенням) та додати до запити обчислюване поле в якому
буде вказано який процент від усього населення країни проживає у цьому місті. За загальну
 кількість населення України беремо число - 40 000 000.

SELECT name,population,Concat(round((population / 40000000) * 100, 2), '%') AS population_procent
FROM cities
ORDER BY population DESC
LIMIT 10;

5)Отримати  список міст України у яких населення більше чи дорівнює 0.1% від загального 
населення України. Список має бути у форматі НАЗВА_МІСТА - ПРОЦЕНТ_НАСЕЛЕННЯ %. Результат
відсортувати за процентом населення

SELECT CONCAT(name, ' - ', ROUND((population / 40000000) * 100, 2), '%') AS city_population_procent
FROM cities
WHERE population >= 0.001 * 40000000
ORDER BY (population / 40000000) DESC;