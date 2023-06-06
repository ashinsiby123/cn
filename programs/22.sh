# Prompt the user to enter the number of terms to generate
echo "Enter the number of terms to generate: "
read num

# Initialize the first two terms of the series
a=0
b=1

# Output the first two terms
echo -n "$a $b"

# Generate the rest of the series using a loop
for (( i=3; i<=$num; i++ ))
do
    # Calculate the next term
    c=$((a + b))

    # Output the next term
    echo -n " $c"

    # Shift the values of a and b to prepare for the next iteration
    a=$b
    b=$c
done

echo
