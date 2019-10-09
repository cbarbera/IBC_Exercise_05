<<<<<<< HEAD
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


>>>>>>> a455ed25d08cf92df4741c59d654fd5e485a06e1
