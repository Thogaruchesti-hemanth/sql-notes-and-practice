 # Introduction to RDMS (Relational Database Management System)

 ## What is a Database? 
  A Database is a collection of organized data so that it can be easily accessed, managed and updated.
  **Example: -** A school database might store students, teachers, subjects and results.

  What is RDBMS?
  RDBMS stands for Relational Database Management system. 
  * It's a system that helps you manage data stored in tables ( also called relations).
  * Tables are connected using relationships.
**Examples: -** MySQL, PostgreSQL, Oracle, SQLite, MS SQL server.

## Basic terminology 
1. Table : - Like a spreedsheet consist of rows and columns.
2. Row(Record) : - One complete set of related data in table.
3. Column : - A Field in the table ( Like name, email, age)
4. Primary Key : - A column (or combination) that uniquely identifies each row.
5. Foreign Key : - A column that links one table to another ( Creates relationships).
6. Constraint : - A rule applied to columns ( e.g. NOT...NULL, UNIQUE, PRIMARY KEY).

## Relationships between tables 
1. One-to-one (1:1)
- Each record in table A is linked to only one record in table B.
- Example: - A person has one passport.

2. One-to-Many ( 1:N)
- One record in table A can be linked to many records in table B. ( one customer can place many orders).

3. Many-to-Many ( M:N)
- Multiple records in Table A can relate to multiple records in table B.
- Example : Students can enroll in many courses and courses can have many students.
- Requires a junction ( bridge) table to implement.

 ## Constraints in RDBMS

 Constraints are rules applied to columns or tables to ensure that only valid data is store.
 1. PRIMARY KEY
- Purpose : Uniquely identifies each record in table.
- Properties :  - Must be unique
-               - Cannot be null
-               - Only one primary key per table

usage Example 

```
CREATE TABLE Students (
student_id INT PRIMARY KEY,
name VARCHAR(100)
);
```

2. Foreign Key
- Purpose : Maintains referential integrity by linking a column to the primary key of another table.
- ensures that the values exists in the referenced table

usage example : - 
```
CREATE TABLE Orders(
order_id INT PRIMARY KEY,
student_id INT,
FOREIGN KEY (student_id) REFERENCES students ( student_id)
);
```

3. NOT NULL
- Purpose : - Ensures that a column cannot have NULL values.
- used when a field must have a value.

Usage Example : - 
```
CREATE TABLE employees (
emp_id INT NOT NULL,
name VARCHAR(100) NOT NULL,
);

```

4. UNIQUE
- Purpose : - Ensures that all values in a column are different
- Unlike PRIMARY KEY, a table can have multiple UNIQUE constraints.
- can accept NULL ( but only one null is same database).

Usage example : - 
```
CREATE TABLE Users(
email VARCHAR(100) UNQIUE,
username VARCHAR(50) UNIQUE
);
```

5. CHECK
- Purpose : - Limits the values can be placed in a column.
- Enforces a condition that each row must satisfy.

Useage example: - 
```
CREATE TABLE products(
price DECIMAL (10,2),
CHECK ( price>0)
);
```

6. DEFAULT 
- Purpose: - sets a default values if no values is provided.
- Prevents inserting null by acccident when a field is left out.

Usage example: - 
```
CREATE TABLE Accounts(
status VARCHAR(20) DEFAULT 'Active'
);
```

7. AUTO_INCREMENT
- Purpose :- Automatically increases the numeric values with each insert.
- Commonly used for primary keys.

Usage Example: - 
```
CREATE TABLE Tickets (
ticket_id INT AUTO_INCREMENT PRIMARY KEY,
issuer VARCHAR(255)
);
```

8. 
