remove from name 
where fips = '51'
/*4.1 No, we cannot delete VA (fips 51) because it is connected to other tables as a foreign key*/

insert into income(fips,income,year) 
values('80',6000,2025)
/*4.2 Yes, because I did not use name as a foreign key, so even though 80 was not in name, it let me add it to income.*/

/*4.3 I asked "I need to collect names and fips in one table. In another table, I need states populations in different years. define their table structure in sql"4.3 It was pretty good: I liked the different column/key names it came up with. But there were might be one or two coding errors I think (Null value for census year, ex.)*/

/*4.5 Yes it does. I used the data direclt from ERD labs from lab 2*/


/*4.6 Yes it does. It is not a state, but Washington, D.C*/
