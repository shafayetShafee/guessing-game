#!/usr/bin/env bash
# File: guessinggame.sh

function guess {

 echo "Please give a guess how many files there are in the current directory:"
 read response

 file=$(ls | wc -l)
 flag=0

 while [[ $flag -ne 1 ]]
 do
   if [[ $response -eq $file ]]
   then
       flag=1
       echo "Congratulations. You guessed correctly"
   elif [[  $response -gt $file ]]
   then
       echo "Your guess is too high"
       echo "Please give a guess how many files there are in the current directory:"
       read response
   else
       echo "Your guess is too low"
       echo "Please give a guess how many files there are in the current directory:"
       read response
   fi
 done
}

guess
