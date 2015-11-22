###RELEASE 5
1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id = 7;
6. SELECT state_name, population_density FROM states 
   WHERE population_density > 50 ORDER BY population_density;
7. SELECT state_name FROM states 
   WHERE population > 1000000 AND population < 1500000;
8. SELECT state_name, region_id FROM states ORDER BY region_id;
9. SELECT region_name FROM regions WHERE region_name LIKE '%central';
10. SELECT regions.region_name, states.state_name 
	FROM states INNER JOIN regions ON states.region_id=regions.id 
	ORDER BY regions.id;

###Reflection
What are databases for?
	Databases are for storing data in a more efficient manner. They facilitate  complex relationships and data management.
What is a one-to-many relationship?
	A one-to-many relationship is when one column BELONGS to another, and conversely, if one column HAS MANY of another type of column. More simply put, when one attribute may link to many elements in another attribute.
What is a primary key? What is a foreign key? How can you determine which is which?
	A primary key is the attribute on which you join another table. It exists on the primary table, and links to a key in another table.
How can you select information out of a SQL database? What are some general guidelines for that?
	The SELECT function is a mainstay in database querying. This is what designates what columns your output table will contain. Always define this first. The next necessary element in a sql statement is the FROM function, which tells sql what table to find the columns to perform the query on.
