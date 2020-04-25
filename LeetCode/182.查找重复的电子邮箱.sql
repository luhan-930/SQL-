编写一个 SQL 查询，查找 PersonALLY 表中所有重复的电子邮箱。

示例：

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
根据以上输入，你的查询应返回以下结果：

+---------+
| Email   |
+---------+
| a@b.com |
+---------+


USE LeetCode

GO

SELECT * FROM PERSONALLY

insert into PERSONALLY (Id, Email) values (1, 'a@b.com')
insert into PERSONALLY (Id, Email) values (2, 'c@d.com')
insert into PERSONALLY (Id, Email) values (3, 'a@b.com')
insert into PERSONALLY values ( 4,'S@d.com')

方法一


SELECT Email FROM PERSONALLY
GROUP BY Email
HAVING COUNT (EMAIL)>1

方法二

SELECT EMAIL FROM (
SELECT EMAIL,COUNT(Email) AS 计数 FROM PERSONALLY
GROUP BY Email
) AS 辅助表
WHERE 计数>1

