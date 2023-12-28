# SQL102
Learning sql from the start 

## Date CRUD
### -ADD primary key for table was created before:-
alter table "name of the table" add primary key("name of column that want to be a primary key")
- EX: alter table students add primary key (studentID);

### -Like Function:-
LIKE function is used in a WHERE clause to search for a specified pattern in a column:
#### Selects all records where the student_name starts with "A"
- Format Ex: Select * from students where student_name 'A%';
#### Selects all records where the student_name ends with "A"
- Format Ex: Select * from students where student_name '%A';
#### Selects all records where the student_name has exactly three characters
- Format Ex: Select * from students where student_name '___';

### -DISTINCT keyword:-
DISTINCT keyword is used to eliminate duplicate rows from the result set of a SELECT query.
- Format EX: Select distinct student_name from studnet
### -AS keyword:-
- Format EX: select student_name As Stname from student

## Operators 
### 1- Comparison Operators:-
| Operators       |  Description          |
| :-------------- | --------------------- |
| =               | Equal                 |
| >               | Greater than          |
| <               | Less than             |
| >=              | Greater than or equal |
| <=              | Less than or equal    |
| <>              | Not equal             |

### 2-Logical Operators:-
| Operators |  Description          |
| :---------| --------------------- |
| AND       | used to combine two or more conditions. It retrieves rows where all specified conditions are true                |
| BETWEEN   | used to select values within a range. It is often used with the AND operator                                     |
| IN        | used to specify multiple values in a WHERE clause. It is often used with the OR operator                         |
| OR        | used to combine two or more conditions. It retrieves rows where at least one of the specified conditions is true |

### 3-Arithmetic Operators:-
| Operators       |  Description          |
| :-------------- | --------------------- |
| +               | Addition              |
| -               | Subtraction          |
| *               | Multiplication       |
| /              | Division |

## Copy table 
### copy table with same value in table exist 
EX: Create table students_edit select * from students 

## Aggregate functions
### Format : SELECT Aggregate_Functions(column_name) FROM Table_name;
| Aggregate | Descrption                                                                                     |      Example                            |
| :-------- |------------------------------------------------------------------------------------------------| ----------------------------------------|
| AVG()     | Calculates the average (mean) of values in a numeric column                                    | Select AVG(GPA) From students           |
| MAX()     | Returns the maximum value in a column                                                          | Select MAX(GPA) From students           |
| MIN()     | Returns the minimum value in a column                                                          | Select MIN(GPA) From students           |
| SUM()     | Calculates the sum of values in a numeric column                                               | Select SUM(Schoolـreward) From students |
| COUNT()   | Counts the number of rows in a result set or the number of non-null values in a specific column| Select COUNT(studentsID) From students  |

## Scalar functions
### 1-Numeric functions:-
| Numeric Function  | Description                                   | Example                         |
| ----------------- | --------------------------------------------- | ------------------------------- |
| POWER()           | Raises a number to the power of another       | `SELECT POWER(2, 3); `          |
| MOD() or %        | Returns the remainder of a division           | `SELECT 10 % 3 ;`               |
| DIV or /          | Performs integer division (divides and truncates) | `SELECT 9 DIV 3;`           |
| ABS()             | Returns the absolute value of a number        | `SELECT ABS(-15); `             |

### 2- String functions:- 
| String Function   | Description                                    | Example                                              |
| ----------------- | ---------------------------------------------- | ---------------------------------------------------- |
| CONCAT()          | Concatenates two or more strings               | `SELECT CONCAT(first_name, ' ', last_name) AS full_name;` |
| UPPER() / UCASE() | Converts a string to uppercase                  | `SELECT UPPER('hello') AS upper_case;`                |
| LOWER() / LCASE() | Converts a string to lowercase                  | `SELECT LOWER('Hello') AS lower_case;`                |
| LENGTH() / LEN()  | Returns the length of a string                  | `SELECT LENGTH('example') AS string_length;`          |
| TRIM()            | Removes leading and trailing spaces from a string | `SELECT TRIM('   hello   ') AS trimmed_string;`       |
| SUBSTRING()       | Extracts a substring from a string              | `SELECT SUBSTRING('abcdef', 2, 3) AS substring_example;` |
| LEFT()            | Returns the left part of a string               | `SELECT LEFT('example', 3) AS left_part;`              |
| RIGHT()           | Returns the right part of a string              | `SELECT RIGHT('example', 3) AS right_part;`            |
| REPLACE()         | Replaces occurrences of a substring with another | `SELECT REPLACE('hello world', 'world', 'everyone') AS replaced_string;` |
| CHAR_LENGTH()     | Returns the number of characters in a string    | `SELECT CHAR_LENGTH('apple') AS char_length;`          |
| POSITION() / LOCATE() | Returns the position of a substring in a string | `SELECT POSITION('l' IN 'hello') AS position_example;` |
| INITCAP()         | Capitalizes the first letter of each word       | `SELECT INITCAP('the quick brown fox') AS initcap_example;` |
| ASCII()           | Returns the ASCII value of the first character  | `SELECT ASCII('A') AS ascii_value;`                    |

