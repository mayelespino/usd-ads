# ADS500B - Module 04 - Exercise 4.2
# Mayel Espino 
# University of San Diego - Applied Data Science
age = [25,18,9,13,34,15,22,17,12,37,15] 
hscount = 0
for a in age:
    if a < 14 or a > 18:
        hscount += 1

print "{0} out of {1} are NOT going to high school, which is {2} %".format(hscount, len(age), round((float(hscount)/len(age))*100))
