/*
Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u) from STATION.
Your result cannot contain duplicates.
The STATION table is described as follows:
                STATION
    ------------------------------
        Filed         Type
    ------------------------------
        ID           NUMBER
        CITY         VARCHAR2(21)
        STATE        VARCHAR2(2)
        LAT_N        NUMBER
        LONG_N       NUMBER
    -------------------------------
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/


SELECT distinct city
FROM station
WHERE LOWER(RIGHT(city, 1)) IN ('a', 'e', 'i', 'o', 'u');