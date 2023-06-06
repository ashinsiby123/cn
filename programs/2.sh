read -p "enter number : " n

if [ `expr $n % 2` == 0 ]
then
	echo "even "
else
	echo "odd"
fi
