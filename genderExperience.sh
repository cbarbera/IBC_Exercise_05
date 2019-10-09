# Exercise5
# Task 1: script to sort wages.csv gender and years experience
# first by gender, then by years experience
# usage: bash genderExperience.sh
cat wages.csv | cut -d , -f 1,2 | tr "," " " | sort -k1,1 -k2,2n | sed '/gender/d' > task1.sh


# Task 2: prints the information about the highest and lowest earners and number of women in top ten

echo "Highest earner: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 1
echo "Lowest earner: " 
sort --field-separator=',' -n -r -k4 $@ | tail -n 2 | head -n 1
echo "# of women in top 10 earners: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 10 | grep female | wc -l


# Task 3

echo "Difference in minimum wage between college grads and high school grads:"
var1=$(cat wages.csv | cut -d ',' -f 3,4 | grep '16,' | sort --field-separator=',' -n -k2 | cut -d ',' -f 2 |  head -n 1)
var2=$(cat wages.csv | cut -d ',' -f 3,4 | grep '12,' | sort --field-separator=',' -n -k2 | cut -d ',' -f 2 |  head -n 1)
echo "$var1-$var2" | bc
