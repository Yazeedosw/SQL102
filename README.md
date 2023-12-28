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





