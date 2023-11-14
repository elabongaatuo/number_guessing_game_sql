#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
#generate random number
SECRET_RANDOM_NUMBER=$((  RANDOM  % 1001 ))
echo $SECRET_RANDOM_NUMBER
#read user name
echo -e "\nEnter your username:"
read USERNAME
#check if user exists
CHECK_USER=$($PSQL "SELECT username FROM games WHERE username='$USERNAME';")
if [[  $CHECK_USER ]]
then
	EXISTING_PLAYER=$($PSQL "SELECT username FROM games WHERE username='$USERNAME';")
	USER_ID=$($PSQL "SELECT user_id FROM games WHERE username='$USERNAME';")
	GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM gamesrecords WHERE user_id=$USER_ID;")
	BEST_GAME=$($PSQL "SELECT MIN(number_of_tries) FROM gamesrecords WHERE user_id=$USER_ID;")
	echo "Welcome back, $EXISTING_PLAYER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#if user doesnt exist
if  [[ -z $CHECK_USER ]]
then
	echo "Welcome, $USERNAME! It looks like this is your first time here."
	echo  $($PSQL "INSERT INTO games(username) VALUES('$USERNAME');")
fi

#guess the number
echo "Guess the secret number between 1 and 1000:"
#check for condition if number
while true
do
	read USERGUESS
	(( NUMBER_OF_GUESSES ++ ))
	if [[  ! $USERGUESS =~ ^[0-9]+$   ]]
	then
		echo  "That is not an integer, guess again:"
	else
		if [[ $USERGUESS -lt $SECRET_RANDOM_NUMBER ]]
		then
			echo "It's higher than that, guess again:"
		elif [[ $USERGUESS -gt $SECRET_RANDOM_NUMBER ]]
		then
			echo "It's lower than that, guess again:"
		else
			
			USER_ID=$($PSQL "SELECT user_id FROM games WHERE username='$USERNAME';")
			$($PSQL "INSERT INTO gamesrecords(user_id,number_of_tries) VALUES($USER_ID,$NUMBER_OF_GUESSES);")
			echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_RANDOM_NUMBER. Nice job!"
			exit	
	fi
fi
done
