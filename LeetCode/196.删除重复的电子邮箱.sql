编写一个 SQL 查询，来删除 PersonALLY2 表中所有重复的电子邮箱，重复的邮箱里只保留 Id 最小 的那个。

+----+------------------+
| Id | Email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+




Id 是这个表的主键。
例如，在运行你的查询语句之后，上面的 PersonALLY2 表应返回以下几行:

+----+------------------+
| Id | Email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
 

提示：

执行 SQL 之后，输出是整个 PersonALLY 表。
使用 delete 语句。

USE LeetCode

GO



CREATE TABLE PERSONALLY2
(
 ID VARCHAR,
 Email VARCHAR(25) NOT NULL

)


GO


INSERT INTO PERSONALLY2 VALUES (1,'john@example.com')
INSERT INTO PERSONALLY2 VALUES (2,'bob@example.com')
INSERT INTO PERSONALLY2 VALUES (3,'john@example.com')


GO

SELECT * FROM PERSONALLY2 


DELETE  P1 FROM PERSONALLY2 P1, PERSONALLY2 P2
WHERE P1.Email =P2.EMAIL AND P1.ID>P2.ID


