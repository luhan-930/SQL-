����һ�� Weather ����дһ�� SQL ��ѯ����������֮ǰ������ģ���������¶ȸ��ߵ��������ڵ� Id��

+---------+------------------+------------------+
| Id(INT) | RecordDate(DATE) | Temperature(INT) |
+---------+------------------+------------------+
|       1 |       2015-01-01 |               10 |
|       2 |       2015-01-02 |               25 |
|       3 |       2015-01-03 |               20 |
|       4 |       2015-01-04 |               30 |
+---------+------------------+------------------+
���磬�������������� Weather ��񣬷������� Id:

+----+
| Id |
+----+
|  2 |
|  4 |
+----+

Create table Weather 
(
Id int, 
RecordDate date, 
Temperature int
)


insert into Weather (Id, RecordDate, Temperature) values ('1', '2015-01-01', '10')
insert into Weather (Id, RecordDate, Temperature) values ('2', '2015-01-02', '25')
insert into Weather (Id, RecordDate, Temperature) values ('3', '2015-01-03', '20')
insert into Weather (Id, RecordDate, Temperature) values ('4', '2015-01-04', '30')

SELECT * FROM Weather

SELECT L2.Id
FROM
Weather L1,
Weather L2
WHERE L1.ID=L2.ID-1
AND L2.Temperature>L1.Temperature
