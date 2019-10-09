# Exercise5 
# script to sort wages.csv gender and years experience 
# first by gender, then by years experience 
# usage: bash genderExperience.sh
cat wages.csv | cut -d , -f 1,2 | tr "," " " | sort -k1,1 -k2,2n | sed '/gender/d' > task1.sh
