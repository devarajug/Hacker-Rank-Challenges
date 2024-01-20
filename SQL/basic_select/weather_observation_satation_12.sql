/*
Query the list of CITY names from STATION that either do not start with vowels and do not end with vowels.
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


select distinct city
from station
where 
    (lower(right(city, 1)) not in ("a", "e", "i", "o", "u")
and 
    lower(left(city, 1)) not in ("a", "e", "i", "o", "u"));