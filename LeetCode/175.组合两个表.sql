USE LeetCode

GO

/*

表1: Person

+-------------+---------+
| 列名         | 类型     |
+-------------+---------+
| PersonId    | int     |
| FirstName   | varchar |
| LastName    | varchar |
+-------------+---------+
PersonId 是上表主键
表2: Address

+-------------+---------+
| 列名         | 类型    |
+-------------+---------+
| AddressId   | int     |
| PersonId    | int     |
| City        | varchar |
| State       | varchar |
+-------------+---------+
AddressId 是上表主键
 

编写一个 SQL 查询，满足条件：无论 person 是否有地址信息，都需要基于上述两表提供 person 的以下信息：

 

FirstName, LastName, City, State

*/

USE LeetCode

GO

CREATE TABLE Person 
(
 PersonId int Primary Key ,
 FirstName varchar(20) not null,
 lastName varchar(20) not null

)

CREATE TABLE Address
(
 AddressId int PRIMARY KEY ,
 PersonId int NOT NULL,
 City varchar(50) NOT NULL,
 State varchar(50) NOT NULL

)

insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen')

insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'null', 'New York')


SELECT * from Person
SELECT * FROM Address

select FirstName,LastName,City,State from Person A
LEFT join Address B
on A.PersonId = B.PersonId




