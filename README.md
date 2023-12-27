# SQL102
Learning sql from the start 

## Date CRUD
### -ADD primary key for table was created before:-
alter table "name of the table" add primary key("name of column that want to be a primary key")
- EX: alter table students add primary key (studentID);

### -Like Function:-
LIKE function is used in a WHERE clause to search for a specified pattern in a column:
- -  Selects all records where the student_name starts with "A"
- Ex: Select * from students where student_name 'A%' , when you wnat to search for 
