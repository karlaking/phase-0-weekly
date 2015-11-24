## More Schema Practice 

### One-to-One Schema 
![alt text](https://github.com/karlaking/phase-0-weekly/blob/master/week-8/imgs/oneToMany.png "One-to-One Relationship")

This represents a one to one relationship because for every element in the first table, there is an element in dinstinct element in the second table with a common attribute.

### One-to-Many Schema
![alt text](https://github.com/karlaking/phase-0-weekly/blob/master/week-8/imgs/manyToMany.png "Many-to-Many Relationship")

### Reflection
What is a one-to-one database?
A one to one database contains two tables where all elements in each table have a unique and exhaustive pair in the other table. To be joined, they must have a common attribute that is one-to-one.

When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You would use a one to one database when a field in one of the tables to be joined could be represented by the value null. 
What is a many-to-many database?
A many to many schema uses a join table to host the ids of each table to store common elements. 
When would you use a many-to-many database? (Think generally, not in terms of the example you created).
A many to many database schema is effective when there are attributes that share a common property. 
What is confusing about database schemas? What makes sense?
Database schemas make sense because they visually have a field in common. Something that still does not make sense to me is the explanation that a one to one relationship is viable where one of the table's fields can be represented by the value "null."




