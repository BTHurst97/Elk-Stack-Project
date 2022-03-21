#for <item> in <list>;
#do
#	<run this command>
#	<run this command>
#done

months=('january' 'february' 'march' 'april' 'may' 'june' 'july' 'august' 'september' 'october' 'november' 'december')
day=('mon' 'tues' 'wed' 'thur' 'fri' 'sat' 'sun')

#for month in ${months[@]};
#do
#	echo $month
#done

#for day in ${day[@]};
#do
#	if [ $day = 'sun' ]
#	then
#		echo "it is $day. take it easy dummy"
#	else
#		echo "it is $day. GET TO WORK OR IM GONNA BE BIG ANGRY!"
#	fi
#done

#for file in $(ls);
#do
#	ls -lah $file
#done

for number in {0..10}
do
	if [ $number = 1 ] || [ $number = 4 ] 
	then 
		echo $number
	fi 
done

