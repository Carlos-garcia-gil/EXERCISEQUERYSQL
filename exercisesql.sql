/*EXERCISE 1*/
SELECT COUNT(*) AS TOTAL 
FROM usairlineflights2.flights;

/*EXERCISE 2*/
SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
FROM usairlineflights2.flights
GROUP BY Origin;

/*EXERCISE 3*/
SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM usairlineflights2.flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth;

/*EXERCISE 4*/
SELECT City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM usairlineflights2.flights AS f
LEFT JOIN usairlineflights2.usairports AS u ON f.Origin = u.IATA
GROUP BY Origin, colYear, colMonth
ORDER BY City, colYear, colMonth;

/*EXERCISE 5*/
SELECT UniqueCarrier, colYear, colMonth, AVG(ArrDelay) AS avg_delay, sum(Cancelled) AS total_cancelled
FROM usairlineflights2.flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY total_cancelled DESC;

/*EXERCISE 6*/
SELECT TailNum, sum(Distance) AS total_distance
FROM usairlineflights2.flights
WHERE TailNum != ''
GROUP BY TailNum
ORDER BY total_distance DESC;

/*EXERCISE 7*/
SELECT CarrierCode, AVG(ArrDelay) AS avgdelay
FROM usairlineflights2.carriers
LEFT JOIN usairlineflights2.flights ON CarrierCode = UniqueCarrier
GROUP BY CarrierCode
HAVING avgdelay > 10
ORDER BY avgdelay DESC;



