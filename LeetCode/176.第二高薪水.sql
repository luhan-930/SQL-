/*
编写一个 SQL 查询，获取 Employee 表中第二高的薪水（Salary） 。

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
例如上述 Employee 表，SQL查询应该返回 200 作为第二高的薪水。如果不存在第二高的薪水，那么查询应返回 null。

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

*/
USE LeetCode

GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='Employee')

DROP TABLE Employee

CREATE TABLE Employee
(
 ID INT NOT NULL,
 Salary INT NOT NULL

)

INSERT INTO Employee VALUES(1,100)
INSERT INTO Employee VALUES(2,100)
INSERT INTO Employee VALUES(3,300)
INSERT INTO Employee VALUES(4,400)
INSERT INTO Employee VALUES(5,400)

SELECT * FROM Employee

方法一   
SELECT  MAX(DISTINCT SALARY) SECONDHIGHESTSALARY
FROM Employee
WHERE SALARY < (SELECT MAX(DISTINCT SALARY ) FROM Employee)

select isnull(SecondHighestSalary,null) SecondHighestSalary from 
(SELECT  MAX(DISTINCT SALARY) SECONDHIGHESTSALARY
FROM Employee
WHERE SALARY < (SELECT MAX(DISTINCT SALARY ) FROM Employee) ) s





方法二 


SELECT 
TOP 1 Salary FROM  Employee
where Salary not in (
select Top 1 Salary from Employee
ORDER BY Salary DESC
) 
ORDER BY Salary DESC

方法三

select XS
from (select distinct top 2 Salary AS XS from Employee order by Salary desc) AS T
where XS not in (select top 1 Salary from Employee order by Salary desc)

方法四


select isnull(SecondHighestSalary,null) SecondHighestSalary from 
(select top 1  Salary as SecondHighestSalary from  Employee 
 where Salary<(select max(Salary) from  Employee)
 order by Salary desc ) s














