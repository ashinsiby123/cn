read -p "enter year : " y

if [ `expr $y % 4` == 0 ]
then
	echo "leap year"
else
	echo "not"
fi
