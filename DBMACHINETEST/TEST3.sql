1.dbtest1=# select sum(int_quantity*int_price) as totalcost from tbl_stock;
 totalcost
-----------
  214015.5
(1 row)

2.dbtest1=# select sum(int_quantity) as total_no_product from tbl_stock;
 total_no_product
------------------
              177
(1 row)


3.dbtest1=# select pk_int_stock_id,UPPER (vchr_name) as vchr_name,int_quantity,ROUND (int_price) as int_price, fk_int_supplier from tbl_stock GROUP BY pk_int_stock_id,int_quantity,fk_int_supplier;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               4 | MEMORY    |          100 |      1502 |               5
               6 | MEMORY    |            2 |      3502 |               4
               2 | KEYBOARD  |            5 |       452 |               3
               3 | MODEM     |           10 |      1202 |               2
               5 | HEADPHONE |           50 |       752 |               4
               1 | MOUSE     |           10 |       502 |               1
(6 rows)







4.dbtest1=# select count(distinct vchr_name) from tbl_stock;
 count
-------
     5
(1 row)


5.dbtest1=# select vchr_name,int_price from tbl_stock where int_price=(select max(int_price) from tbl_stock);
 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5
(1 row)


6.dbtest1=# insert into tbl_enrollment values(1,40,1);
INSERT 0 1
dbtest1=# insert into tbl_enrollment values(2,15,2);
INSERT 0 1
dbtest1=# insert into tbl_enrollment values(3,10,3);
INSERT 0 1
dbtest1=# insert into tbl_enrollment values(4,12,4);
INSERT 0 1
dbtest1=# insert into tbl_enrollment values(5,60,2);
INSERT 0 1
dbtest1=# insert into tbl_enrollment values(6,14,6);
INSERT 0 1
dbtest1=# insert into tbl_enrollment values(7,200,7);
INSERT 0 1
dbtest1=# select *from tbl_enrollment;
 pk_int_enrollment_id | int_count | fk_int_class_id
----------------------+-----------+-----------------
                    1 |        40 |               1
                    2 |        15 |               2
                    3 |        10 |               3
                    4 |        12 |               4
                    5 |        60 |               2
                    6 |        14 |               6
                    7 |       200 |               7
(7 rows)

dbtest1=# select sum(int_count)as total_enrollment from tbl_enrollment;
 total_enrollment
------------------
              351
(1 row)

7.dbtest1=# insert into tbl_classes values(1,'CS100','1');
INSERT 0 1
dbtest1=# insert into tbl_classes values(2,'CS101','1');
INSERT 0 1
dbtest1=# insert into tbl_classes values(3,'CS102',1);
INSERT 0 1
dbtest1=# insert into tbl_classes values(4,'CS103',1);
INSERT 0 1
dbtest1=# insert into tbl_classes values(5,'EC200',2);
INSERT 0 1
dbtest1=# insert into tbl_classes values(6,'CC300',3);
INSERT 0 1
dbtest1=# insert into tbl_classes values(7,'AT400',4);
INSERT 0 1
dbtest1=# select * from tbl_classes;
 pk_int_class_id | vchr_class_name | fk_int_dept_id
-----------------+-----------------+----------------
               1 | CS100           |              1
               2 | CS101           |              1
               3 | CS102           |              1
               4 | CS103           |              1
               5 | EC200           |              2
               6 | CC300           |              3
               7 | AT400           |              4
(7 rows)

dbtest1=# select count(pk_int_class_id)as no_of_classes from tbl_classes;
 no_of_classes
---------------
             7
(1 row)


8.dbtest1=# delete from tbl_stock where fk_int_supplier = 5;
DELETE 1
dbtest1=# select *from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(5 rows)


9.dbtest1=# select CONCAT(vchr_name,int_price) from tbl_stock as product_price;
     concat
----------------
 Mouse501.5
 Keyboard451.5
 Modem1201.5
 Headphone751.5
 Memory3501.5
(5 rows)




10.dbtest1=# create table tbl_student(EnRlNo int,RollNo serial primary key,Name varchar(25),City varchar(50),Mobile int,Dob date);
CREATE TABLE
dbtest1=# insert into tbl_student values(11,2,'Akhil','Delhi',98756579,'12-01-1986');
INSERT 0 1
dbtest1=# insert into tbl_student values(6,4,'Maya','BANGALORE',98734534,'12-11-1987');
INSERT 0 1
dbtest1=# insert into tbl_student values(1,8,'Anoop','Bangalore',93456535,'22-12-1990');
INSERT 0 1
dbtest1=# insert into tbl_student values(20,1,'Paul','Cochin',96754555,'13-03-1991');
INSERT 0 1
dbtest1=# insert into tbl_student values(3,5,'Sandeep','Delhi',84865644,'14-06-1993');
INSERT 0 1
dbtest1=# select *from tbl_student;
 enrlno | rollno |  name   |   city    |  mobile  |    dob
--------+--------+---------+-----------+----------+------------
     11 |      2 | Akhil   | Delhi     | 98756579 | 1986-01-12
      6 |      4 | Maya    | BANGALORE | 98734534 | 1987-11-12
      1 |      8 | Anoop   | Bangalore | 93456535 | 1990-12-22
     20 |      1 | Paul    | Cochin    | 96754555 | 1991-03-13
      3 |      5 | Sandeep | Delhi     | 84865644 | 1993-06-14
(5 rows)

dbtest1=# create table tbl_grade(RollNo int,Course varchar(50),Grade varchar(2));
CREATE TABLE

dbtest1=# insert into tbl_grade values(2,'C','A');
INSERT 0 1
dbtest1=# insert into tbl_grade values(2,'Java','B');
INSERT 0 1
dbtest1=# insert into tbl_grade values(1,'C','B');
INSERT 0 1
dbtest1=# insert into tbl_grade values(1,'Java','A');
INSERT 0 1
dbtest1=# insert into tbl_grade values(4,'PHP','A');
INSERT 0 1
dbtest1=# insert into tbl_grade values(4,'Java','A');
INSERT 0 1
dbtest1=# insert into tbl_grade values(4,'C','B');
INSERT 0 1
dbtest1=# insert into tbl_grade values(8,'Java','B');
INSERT 0 1
dbtest1=# insert into tbl_grade values(5,'PHP','A');
INSERT 0 1
dbtest1=# insert into tbl_grade values(5,'Java','D');
INSERT 0 1

dbtest1=# select * from tbl_grade;
 rollno | course | grade
--------+--------+-------
      2 | C      | A
      2 | Java   | B
      1 | C      | B
      1 | Java   | A
      4 | PHP    | A
      4 | Java   | A
      4 | C      | B
      8 | Java   | B
      5 | PHP    | A
      5 | Java   | D
(10 rows)



dbtest1=# select tbl_student.name,tbl_grade.course from tbl_student INNER JOIN tbl_grade ON tbl_student.rollno = tbl_grade.rollno where tbl_grade.grade ='A' ORDER BY grade,course;
  name   | course
---------+--------
 Akhil   | C
 Maya    | Java
 Paul    | Java
 Maya    | PHP
 Sandeep | PHP
(5 rows)


11.dbtest1=# select count(rollno) from tbl_grade where tbl_grade.grade='B';
 count
-------
     4
(1 row)




12.dbtest1=# select tbl_student.name,count(tbl_grade.course)as no_of_course from tbl_grade INNER JOIN tbl_student ON tbl_student.rollno = tbl_grade.rollno GROUP BY tbl_student.name,tbl_student.rollno ORDER BY tbl_student.name;
  name   | no_of_course
---------+--------------
 Akhil   |            2
 Anoop   |            1
 Maya    |            3
 Paul    |            2
 Sandeep |            2
(5 rows)



13.dbtest1=# select tbl_student.name from tbl_student INNER JOIN tbl_grade ON tbl_student.rollno =tbl_grade.rollno WHERE tbl_grade.course ='Java' AND tbl_student.city='BANGALORE' GROUP BY tbl_student.name ;
 name
------
 Maya
(1 row)


14.dbtest1=# select tbl_student.name,tbl_grade.course from tbl_student INNER JOIN tbl_grade ON tbl_grade.rollno=tbl_student.rollno WHERE name LIKE 'A%';
 name  | course
-------+--------
 Akhil | C
 Akhil | Java
 Anoop | Java
(3 rows)


15.dbtest1=# select name,date_part('year',age(Dob))as age from tbl_student;
  name   | age
---------+-----
 Akhil   |  37
 Maya    |  35
 Anoop   |  32
 Paul    |  31
 Sandeep |  29
(5 rows)

16.dbtest1=# create table tbl_dob(name varchar(25),Date_of_birth date);
CREATE TABLE
dbtest1=# insert into tbl_dob values('Name1','12-Dec-2010');
INSERT 0 1
dbtest1=# insert into tbl_dob values('Name2','23-Jan-2010');
INSERT 0 1
dbtest1=# select *from tbl_dob;
 name  | date_of_birth
-------+---------------
 Name1 | 2010-12-12
 Name2 | 2010-01-23
(2 rows)

dbtest1=# select name,to_char(date_of_birth,'dd-Mon-yyyy')from tbl_dob;
 name  |   to_char
-------+-------------
 Name1 | 12-Dec-2010
 Name2 | 23-Jan-2010
(2 rows)