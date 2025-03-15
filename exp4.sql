 create table student(name varchar2(255),age int not null);

Table created.

SQL> insert into student values('&name',&age);
Enter value for name: piyush
Enter value for age: 18
old   1: insert into student values('&name',&age)
new   1: insert into student values('piyush',18)

1 row created.

SQL> /
Enter value for name: keshav
Enter value for age: 20
old   1: insert into student values('&name',&age)
new   1: insert into student values('keshav',20)

1 row created.

SQL> /
Enter value for name: parimal
Enter value for age: 19
old   1: insert into student values('&name',&age)
new   1: insert into student values('parimal',19)

1 row created.

SQL> /
Enter value for name: nakul
Enter value for age: 22
old   1: insert into student values('&name',&age)
new   1: insert into student values('nakul',22)

1 row created.

SQL> select * from student;

NAME
--------------------------------------------------------------------------------
       AGE
----------
piyush
        18

keshav
        20

parimal
        19


NAME
--------------------------------------------------------------------------------
       AGE
----------
nakul
        22


SQL> select min(age) from student;

  MIN(AGE)
----------
        18

SQL> select * from student where age=(select min(age)from student);

NAME
--------------------------------------------------------------------------------
       AGE
----------
piyush
        18


SQL> select * from student where age=(select max(age)from student);

NAME
--------------------------------------------------------------------------------
       AGE
----------
nakul
        22


SQL> select * from student where age=(select avg(age)from student);

no rows selected

SQL> select avg(age) from student;

  AVG(AGE)
----------
     19.75

SQL> select count(age) from student;

COUNT(AGE)
----------
         4

SQL> select min(age) from student;

  MIN(AGE)
----------
        18

SQL> select  max(age) from student;

  MAX(AGE)
----------
        22
