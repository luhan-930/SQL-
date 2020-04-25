﻿Employee4 表包含所有员工信息，每个员工有其对应的工号 Id，姓名 Name，工资 Salary 和部门编号 DepartmentId 

+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |
+----+-------+--------+--------------+
Department 表包含公司所有部门的信息。

+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
编写一个 SQL 查询，找出每个部门获得前三高工资的所有员工。例如，根据上述给定的表，查询结果应返回：

+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Randy    | 85000  |
| IT         | Joe      | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |
+------------+----------+--------+
解释：

IT 部门中，Max 获得了最高的工资，Randy 和 Joe 都拿到了第二高的工资，Will 的工资排第三。
销售部门（Sales）只有两名员工，Henry 的工资最高，Sam 的工资排第二。

Create table  Employee4 (Id int, Name varchar(255), Salary int, DepartmentId int)

insert into Employee4 (Id, Name, Salary, DepartmentId) values ('1', 'Joe', '85000', '1')
insert into Employee4 (Id, Name, Salary, DepartmentId) values ('2', 'Henry', '80000', '2')
insert into Employee4 (Id, Name, Salary, DepartmentId) values ('3', 'Sam', '60000', '2')
insert into Employee4 (Id, Name, Salary, DepartmentId) values ('4', 'Max', '90000', '1')
insert into Employee4 (Id, Name, Salary, DepartmentId) values ('5', 'Janet', '69000', '1')
insert into Employee4 (Id, Name, Salary, DepartmentId) values ('6', 'Randy', '85000', '1')
insert into Employee4 (Id, Name, Salary, DepartmentId) values ('7', 'Will', '70000', '1')

USE LeetCode

GO


SELECT * FROM Employee4

SELECT * FROM Department

SELECT B.Name,A.Name,A.Salary FROM (
select *, 
dense_rank() over (partition by DepartmentId
order by Salary desc) as ranking
from Employee4) as  A
INNER JOIN  Department B
ON A.DepartmentId=B.Id
WHERE RANKING <=3











