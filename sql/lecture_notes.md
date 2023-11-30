

## Most Important SQL Commands

- `SELECT` - extracts data from a database
- `UPDATE` - updates data in a database
- `DELETE` - deletes data from a database
- `INSERT INTO` - inserts new data into a database
- `CREATE DATABASE` - creates a new database
- `ALTER DATABASE` - modifies a database
- `CREATE TABLE` - creates a new table
- `ALTER TABLE` - modifies a table
- `DROP TABLE` - deletes a table
- `CREATE INDEX` - creates an index (search key)
- `DROP INDEX` - deletes an index



# `WHERE` clause (Comparison ) operators :

The following operators can be used in the `WHERE` clause:

| Operator | Description                                                  |
| :------- | :----------------------------------------------------------- |
| =        | Equal                                                        |
| >        | Greater than                                                 |
| <        | Less than                                                    |
| >=       | Greater than or equal                                        |
| <=       | Less than or equal                                           |
| <>       | Not equal. **Note:** In some versions of SQL this operator may be written as != |
| BETWEEN  | Between a certain range                                      |
| LIKE     | Search for a pattern                                         |
| IN       | To specify multiple possible values for a column             |

------







## Arithmetic Operators

| Operator     | Meaning                                                      |
| :----------- | :----------------------------------------------------------- |
| + (Add)      | Addition                                                     |
| - (Subtract) | Subtraction                                                  |
| * (Multiply) | Multiplication                                               |
| / (Divide)   | Division                                                     |
| % (Modulo)   | Returns the integer remainder of a division. For example, 17 % 5 = 2 because the remainder of 17 divided by 5 is 2. |





## SQL Bitwise Operators

| Operator | Description          |
| :------- | :------------------- |
| &        | Bitwise AND          |
| \|       | Bitwise OR           |
| ^        | Bitwise exclusive OR |





## SQL Logical Operators

| Operator | Description                                                  |
| :------- | :----------------------------------------------------------- |
| ALL      | TRUE if all of the subquery values meet the condition        |
| AND      | TRUE if all the conditions separated by AND is TRUE          |
| ANY      | TRUE if any of the subquery values meet the condition        |
| BETWEEN  | TRUE if the operand is within the range of comparisons       |
| EXISTS   | TRUE if the subquery returns one or more records             |
| IN       | TRUE if the operand is equal to one of a list of expressions |
| LIKE     | TRUE if the operand matches a pattern                        |
| NOT      | Displays a record if the condition(s) is NOT TRUE            |
| OR       | TRUE if any of the conditions separated by OR is TRUE        |
| SOME     | TRUE if any of the subquery values meet the condition        |





## Different Types of SQL JOINs

Here are the different types of the JOINs in SQL: [[Source](https://www.w3schools.com/sql/img_right_join.p)]

- `(INNER) JOIN`: Returns records that have matching values in both tables
- `LEFT (OUTER) JOIN`: Returns all records from the left table, and the matched records from the right table
- `RIGHT (OUTER) JOIN`: Returns all records from the right table, and the matched records from the left table
- `FULL (OUTER) JOIN`: Returns all records when there is a match in either left or right table

![SQL INNER JOIN](https://www.w3schools.com/sql/img_inner_join.png) ![SQL LEFT JOIN](https://www.w3schools.com/sql/img_left_join.png) ![SQL RIGHT JOIN](https://www.w3schools.com/sql/img_right_join.png) ![SQL FULL OUTER JOIN](https://www.w3schools.com/sql/img_full_outer_join.png)



# Data Type in SQLite

SQLite is "typeless". This means that you can store any kind of data you want in any column of any table, regardless of the declared datatype of that column. Even though SQLite allows the datatype to be omitted, it is still a good idea to include it in your CREATE TABLE statements. QLite accepts all the usual datatypes. For example:

1. **NULL**: The special NULL value represents a missing or undefined value.
2. **INTEGER**: Integer numeric values, can be signed or unsigned.
3. **REAL**: Floating-point numeric values.
4. **TEXT**: Textual data, stored using the database encoding (UTF-8, UTF-16BE, or UTF-16LE).
5. **BLOB**: Binary Large Object, for storing binary data like images or documents.
6. **NUMERIC**: A type that can store any type of numeric data, including integers and floating-point numbers.
7. **BOOLEAN**: SQLite does not have a separate BOOLEAN type, but you can use INTEGER with values 0 and 1 to represent boolean values.
8. **DATE and TIME**: SQLite does not have a dedicated DATE or TIME type. Instead, you can use TEXT or INTEGER types and handle date and time values accordingly.



One **exception** to the typelessness of SQLite is a column whose type is I**NTEGER PRIMARY KEY**. **INTEGER PRIMARY KEY** columns must contain a 32-bit signed integer. Any attempt to insert non-integer data will result in an error.





# SQL Constraints

SQL constraints are used to specify rules for data in a table.

- `NOT NULL` - Ensures that a column cannot have a NULL value
- `UNIQUE` - Ensures that all values in a column are different
- `PRIMARY KEY` - A combination of a `NOT NULL` and `UNIQUE`. Uniquely identifies each row in a table
- `FOREIGN KEY` - Prevents actions that would destroy links between tables
- `CHECK` - Ensures that the values in a column satisfies a specific condition
- `DEFAULT` - Sets a default value for a column if no value is specified
- `CREATE INDEX` - Used to create and retrieve data from the database very quickly