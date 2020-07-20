echo "Welcome to the Guessing game!!!"

ans=$(ls -1 | wc -l) 		#Correct number of files.
end_loop=0 			#Variable used for breaking the loop. Also, used for atleast 1 run of while loop.

function fn_read 		#Defining function to read User guess.
{
	echo "Guess the number of files in the current directory : "
	read guess
}

while [[ $end_loop -eq 0 ]]
do
	fn_read 		#Calling/Invoking function for user guess.
	if [[ $guess -lt $ans ]]
	then
		echo "Too low. Please try again."
	elif [[ $guess -gt $ans ]]
	then
		echo "Too high. Please try again."
	else
		let end_loop=1 	#Assigning 1 to break from the loop when guess is correct.
	fi
done

echo "Congrats!!! $guess is the correct number answer."

