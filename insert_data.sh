#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "create table snus(year int not null,round varchar(255) not null,winner varchar(255) not null,opponent varchar(255) not null,winner_goals int not null,opponent_goals int not null
)")
echo $($PSQL "\\copy snus(year,round,winner,opponent,winner_goals,opponent_goals) from 'games.csv' csv header")
echo $($PSQL "insert into teams(name) select distinct team_name from (select winner as team_name from snus union select opponent from snus) as subq")
echo $($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) select year, round, (select team_id from teams where name=winner) as winner_id, (select team_id from teams where name=opponent) as opponent_id, winner_goals, opponent_goals from snus")

# echo $($PSQL "drop table snus")
# echo $($PSQL "truncate table games restart identity")
# echo $($PSQL "truncate table teams restart identity cascade")