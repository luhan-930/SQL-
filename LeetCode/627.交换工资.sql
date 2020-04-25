﻿给定一个 salary 表，如下所示，有 m = 男性 和 f = 女性 的值。交换所有的 f 和 m 值（例如，将所有 f 值更改为 m，反之亦然）
要求只使用一个更新（Update）语句，并且没有中间的临时表。

注意，您必只能写一个 Update 语句，请不要编写任何 Select 语句。

例如：

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

运行你所编写的更新语句之后，将会得到以下表:

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |


USE LeetCode

GO

create table  salary2(id int, name varchar(100), sex char(1), salary int)

insert into salary2(id, name, sex, salary) values ('1', 'A', 'm', '2500')
insert into salary2 (id, name, sex, salary) values ('2', 'B', 'f', '1500')
insert into salary2 (id, name, sex, salary) values ('3', 'C', 'm', '5500')
insert into salary2 (id, name, sex, salary) values ('4', 'D', 'f', '500')

SELECT * FROM salary2 


update salary2
set sex = case sex 
when 'm' then 'f'
when 'f' then 'm'
end
