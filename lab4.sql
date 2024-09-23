remove from name 
where fips = '51'
/*4.1 No, we cannot delete VA (fips 51) because it is connected to other tables as a foreign key*/

insert into income(fips,income,year) 
values('80',6000,2025)
/*4.2 Yes, because I did not use name as a foreign key, so even though 80 was not in name, it let me add it to income.*/

/*4.3 I asked "I need to collect names and fips in one table. In another table, I need states populations in different years. define their table structure in sql"4.3 It was pretty good: I liked the different column/key names it came up with. But there were might be one or two coding errors I think (Null value for census year, ex.)*/

/*4.5 Yes it does. I used the data direclt from ERD labs from lab 2*/


/*4.6 I put in the code:
SELECT n.name, i.income
FROM income i
JOIN name n ON i.fips = n.fips
ORDER BY i.income DESC
LIMIT 1;

I plugged the code into pgAdmin and it worked
The answer is Washington, D.C*/

/*4.7 I asked it to devise a query to find the population growth rate in VA for the last 5 years and it gave me the following code:

WITH pop_va AS (
    SELECT p.year, p.pop
    FROM population p
    JOIN name n ON p.fips = n.fips
    WHERE n.name = 'Virginia'
    ORDER BY p.year DESC
    LIMIT 5
)
SELECT 
    ((MAX(pop) - MIN(pop)) / MIN(pop)) * 100 AS growth_rate_percentage
FROM pop_va;

I plugged in the code into pgAdmin and it did not work: It said there was an error with 
line 4, "With pop_va AS (". So I told it where the error was and it had me break down the code to circumvent potential syntax errors.
it then yielded a result of 0. I asked chatgtp why this might be and it gave me some potential other ways to check and debug.
it seems there were not significant changes over time according to how pgn calculates. I then asked chatgtp to calculate based on the
data in the charts I gave it and it came back with 1.82%, which I checked in a calculator manually and is accurate.*/ 

/* 4.8 It seems that ChatGTP is relatively accurate and good at simple coding and calculating. I even asked it if it was giving me sql instructions
compatible with the version of pgAdmin we have been using, and it said yes. But it seems the coding might not be entirely accurate.*/



