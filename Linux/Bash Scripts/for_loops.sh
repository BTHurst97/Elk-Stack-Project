
states=('oregon' 'kentucky' 'florida' 'california' 'hawaii')

for states in ${states[@]};
do
if [ $states == 'hawaii' ]

	then 
		echo "hawaii is the best"
	else
		echo "im not fond of hawaii"
fi
done

for number in {0..9}

do 
	if [ $number = 3 ] || [ $number = 5 ] || [ $number = 7 ]
	then 
		echo $number
	fi 
done


