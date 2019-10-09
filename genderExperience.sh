<<<<<<< HEAD
# Exercise5 
# script to sort wages.csv gender and years experience 
# first by gender, then by years experience 
# usage: bash genderExperience.sh
cat wages.csv | cut -d , -f 1,2 | tr "," " " | sort -k1,1 -k2,2n | sed '/gender/d' > task1.sh
=======
# Exercise5 shell script
# Task 1: creates a file containing unique combinations of gender and years of experience
# Task 2: prints the information about the highest and lowest earners and number of women in top ten
<<<<<<< HEAD
=======









echo "Highest earner: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 1
echo "Lowest earner: " 
sort --field-separator=',' -n -r -k4 $@ | tail -n 2 | head -n 1
echo "# of women in top 10 earners: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 10 | grep female | wc -l

>>>>>>> refs/remotes/origin/master









echo "Highest earner: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 1
echo "Lowest earner: " 
sort --field-separator=',' -n -r -k4 $@ | tail -n 2 | head -n 1
echo "# of women in top 10 earners: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 10 | grep female | wc -l


>>>>>>> 9c5a879dbf9f12632bf8d97af62791f9f53f0ad9
