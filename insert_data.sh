#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "truncate teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
if [[ $OPPONENT != opponent ]]
then
 INSERT_TEAM_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT')")
 INSERT_TEAM_RESULT2=$($PSQL "insert into teams(name) values('$WINNER')")
fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
 if [[ $YEAR != year ]]
 then
   TEAM_ID_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT'")
   TEAM_ID_WINNER=$($PSQL "select team_id from teams where name='$WINNER'")
 if [[ -z $TEAM_ID_OPPONENT || -z $TEAM_ID_WINNER ]]
  then 
   # set to null
   MAJOR_ID='null'
  fi
  INSERT_GAMES_RESULT=$($PSQL "insert into games(year,round,winner_id,winner_goals,opponent_goals,opponent_id) values($YEAR,'$ROUND',$TEAM_ID_WINNER,$WINNER_GOALS,$OPPONENT_GOALS,$TEAM_ID_OPPONENT)")
 fi

done