echo "Welcome to Guessing game"
function input {
	echo "Enter the number of files in the current directory:"
  read guess  
  f=$(ls -1 | wc -l)
  if [[ ! $guess =~ ^[0-9]+$ ]]
  then 
  echo "Invalid input enter a number"
  input
  fi
}
input
while [[ $guess -ne $f ]]
do
	if [[ $guess -lt $f ]] 
	then
		echo $guess " is Too low."
	else
		echo $guess " is Too high."
	fi
	input
done
echo "Well done! It is the correct answer"
