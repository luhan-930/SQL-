��дһ�� SQL ��ѯ�������������������������ε����֡�

+----+-----+
| Id | Num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+
���磬��������� Logs �� 1 ��Ψһ���������������ε����֡�

+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+



Create table  Logs 
(Id int, Num int)

insert into Logs (Id, Num) values ('1', '1')
insert into Logs (Id, Num) values ('2', '1')
insert into Logs (Id, Num) values ('3', '1')
insert into Logs (Id, Num) values ('4', '2')
insert into Logs (Id, Num) values ('5', '1')
insert into Logs (Id, Num) values ('6', '2')
insert into Logs (Id, Num) values ('7', '2')

SELECT * FROM Logs

SELECT DISTINCT l1.Num AS ConsecutiveNums 
FROM
    Logs l1,
    Logs l2,
    Logs l3
WHERE
    l1.Id = l2.Id - 1
    AND l2.Id = l3.Id - 1
    AND l1.Num = l2.Num
    AND l2.Num = l3.Num

