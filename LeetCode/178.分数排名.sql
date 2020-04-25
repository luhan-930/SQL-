
编写一个 SQL 查询来实现分数排名。如果两个分数相同，则两个分数排名（Rank）相同。
请注意，平分后的下一个名次应该是下一个连续的整数值。换句话说，名次之间不应该有“间隔”。

+----+-------+
| Id | Score |
+----+-------+
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |
+----+-------+
例如，根据上述给定的 Scores 表，你的查询应该返回（按分数从高到低排列）：

+-------+------+
| Score | Rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+

USE LeetCode

GO

Create table Scores (Id int, Score DECIMAL(3,2))


insert into Scores (Id, Score) values ('1', '3.511')
insert into Scores (Id, Score) values ('2', '3.65')
insert into Scores (Id, Score) values ('3', '4.0')
insert into Scores (Id, Score) values ('4', '3.85')
insert into Scores (Id, Score) values ('5', '4.0')
insert into Scores (Id, Score) values ('6', '3.65')


SELECT * FROM Scores 

----第一部分 对分数进行降序排序

SELECT A.SCORE AS SCORE FROM SCORES A
ORDER BY A.SCORE DESC

第二部分

select b.Score from Scores b where b.Score >= X   
select count(distinct b.Score) from Scores b where b.Score >= X as Rank

select a.Score as Score,
(select count(distinct b.Score) from Scores b where b.Score >= a.Score) as Rank
from Scores a
order by a.Score DESC



-----窗口函数  涉及到排名的问题，都可以使用窗口函数来解决。记住rank, dense_rank, row_number排名的区别。

select *,             
   rank() over (order by score desc) as ranking,
   dense_rank() over (order by score desc) as dese_rank,
   row_number() over (order by score desc) as row_num
from Scores
