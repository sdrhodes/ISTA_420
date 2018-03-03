## Steven Rhodes
### T-SQL Homework, Chapter 1

### 1. Give an informal definition of database as used in the expression "relational database management system."
"A large database software system like SQL server, SQL Lite, etc"
A database is a set of unique objects, typically organized into tables. Information in databases requires a name and a type of data.

### 2. Give an informal definition of database as used in the expression "Human Resources database"
A database for Human Resources could be the set of employees, along with associated data points. Age, tenure, rank, title, department, etc.
Collection of data

### 3. Give an informal definition of entity integrity
Entity integrity refers to the uniqueness of each row (tuple) in a table (relation). Typically enforced with the use of a unique canidate key (ie order number in an Orders table). This canidate key can be a primary key. No duplicate rows.

### 4. Give an informal definition of referential integrity
Referential integrity enforces the use of foreign keys (child table) to define attributes that reference the same attribute through another relation's (table's) candidate key (primary, parent table)
Making sure that every child has a real parent.

### 5. What is a relation as defined in the textbook? A one word answer to this question is sufficient.
A relation is a table

### 6. Is this table in first normal form? 
No, because the attribute facCreds contains multiple values. The attribute facCreds could be moved to a new table called "credentials." Table could be referenced by a second table linking primary keys, Ex facID | credID
All values in columns are atomic (indivisible)

### 7. Is this table is second normal form? 
No, because there are nonkey attributes that can be found with only part of the canidate keys. Example: you could search for petID 3 and return all attributes. 2NF is violated because this relation does not require the use of all canidate keys (primary keys ownerID and petID)

### 8. Is this table in third normal form? 
No because non-key attributes are dependent on each other. Example: LastName is dependent on FirstName, and vice versa. City is dependent on State. City/state are dependent on ZIP code

### 9. What is an OLTP database (cashier at Walmart when they ring up a sale)? What operations is it optimized for?
An Online transactional processing database is best suited for editing data - insert, deleting, and updating. The collection and retention of data. It is not optimized for running reports due to many normalized tables with complex relationships. Compiling reports is time consuming

### 10. What is a star schema? What operations is it optimized for?
A star schema is the simplest design for a data warehouse in which tables and relationships are minimal; information is usually arranged on different tables by subject. This makes star schemas ideal for reporting purposes. Online Analysis Processing (OLAP).