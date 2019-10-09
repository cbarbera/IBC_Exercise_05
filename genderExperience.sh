<<<<<<< HEAD
please let this work
=======



# Exercise5 shell script
# Task 1: creates a file containing unique combinations of gender and years of experience
# Task 2: prints the information about the highest and lowest earners and number of women in top ten

echo "Highest earner: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 1
echo "Lowest earner: " 
sort --field-separator=',' -n -r -k4 $@ | tail -n 2 | head -n 1
echo "# of women in top 10 earners: " 
sort --field-separator=',' -n -r -k4 $@ | head -n 10 | grep female | wc -l


>>>>>>> a455ed25d08cf92df4741c59d654fd5e485a06e1
