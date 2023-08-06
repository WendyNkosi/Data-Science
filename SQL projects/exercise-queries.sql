SELECT * FROM cd.facilities
WHERE membercost !=0 
AND membercost <monthlymaintenance*0.02;

SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';

SELECT * FROM cd.facilities
WHERE facid=1 OR facid=5;

SELECT * FROM cd.facilities
WHERE facid IN (1,5);

SELECT memid, surname, firstname,joindate FROM cd.members
WHERE joindate>'2012-09-01';

SELECT DISTINCT (surname) FROM cd.members
ORDER BY surname
LIMIT 10;

SELECT MAX(joindate) FROM cd.members;

SELECT 	COUNT(*)FROM cd.facilities
WHERE guestcost >=10;

SELECT facid, SUM(slots) FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots);

SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
HAVING SUM(slots)>1000
ORDER BY facid;

SELECT cd.bookings.starttime, cd.facilities. name FROM cd.facilities
INNER JOIN cd.bookings
ON cd.facilities.facid=cd.bookings.facid
WHERE cd.facilities.facid IN (0,1)
AND cd.bookings.starttime>='2012-09-21'
AND cd.bookings.starttime<='2012-09-22'
ORDER BY cd.bookings.starttime;

SELECT cd.bookings.starttime FROM cd.bookings
INNER JOIN cd.members
ON cd.members.memid=cd.bookings.memid
WHERE cd.members.firstname='David'
AND cd.members.surname='Farrell'