1)Отримати список міст-мільйонерів України
SELECT name
 FROM cities 
WHERE population > 1000000;

2)Отримати список міст з регіону E та W відсортований за кількістю населення
SELECT name,region,population 
FROM cities
WHERE  region IN ( 'W', 'E')
ORDER BY population ASC;

3)Отримати список міст з населенням більше ніж 50000 з регіонів S, C та N (вікористовуючи оператор IN)
SELECT *
FROM cities
WHERE  population > 50000 AND region IN ( 'S', 'C', 'N')

4)Отримати перші 20 міст (за назвою) у яких населення більше ніж 150000 але не більше ніж 350000 та які знаходяться в регіонах E,W,N
SELECT name, population, region 
FROM cities
WHERE population BETWEEN  150000 AND 350000 AND region IN ( 'E', 'W', 'N')
ORDER BY name
LIMIT 20;

5)Отримати другу десятку міст за кількістю населення які не входять до регіонів E та W
SELECT name
FROM cities
WHERE NOT region IN ( 'W', 'E')
LIMIT 10 OFFSET 10