ĳ��վ����������Customers ��� Orders ����дһ�� SQL ��ѯ���ҳ����дӲ������κζ����Ŀͻ���

Customers ��

+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Orders ��

+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
����������������Ĳ�ѯӦ���أ�

+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+

Create table Customers 
(
Id int, 
Name varchar(255)

)
Create table  Orders 
(
Id int,
 CustomerId int

 )

 use LeetCode

 go

insert into Customers (Id, Name) values ('1', 'Joe')
insert into Customers (Id, Name) values ('2', 'Henry')
insert into Customers (Id, Name) values ('3', 'Sam')
insert into Customers (Id, Name) values ('4', 'Max')

insert into Orders (Id, CustomerId) values ('1', '3')
insert into Orders (Id, CustomerId) values ('2', '1')


SELECT * FROM Customers
SELECT * FROM Orders



SELECT NAME AS CUSTOMERS  FROM CUSTOMERS 
WHERE 
NAME NOT IN 
( SELECT 
A.NAME AS CUSTOMERS  FROM Customers A
INNER JOIN ORDERS B
ON A.ID=B.CUSTOMERID )



select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
)

select a.Name as Customers
from Customers as a
left join Orders as b
on a.Id=b.CustomerId
where b.CustomerId is null;


