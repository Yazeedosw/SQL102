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


