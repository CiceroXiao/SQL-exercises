/*
 所属项目：SQL-daily-exercises
 所属数据库：SQL_daily_exercises
 语言运行环境：MySQL 8.0
 原题链接：https://leetcode.com/problems/game-play-analysis-iv/
 创建者：Cicero
 创建日期：2021-11-9
 修改日期：
 */


USE sql_daily_exercises;

drop table if exists Activity;
truncate table Activity;
create table if not exists Activity(
    player_id int,
    device_id int,
    event_date date,
    games_played int,
    primary key(player_id, event_date)
);
insert into Activity values(1, 2, '2016-03-01', 5);
insert into Activity values(1, 2, '2016-03-02', 6);
insert into Activity values(2, 3, '2017-06-25', 1);
insert into Activity values(3, 1, '2016-03-02', 0);
insert into Activity values(3, 4, '2018-07-03', 5);
