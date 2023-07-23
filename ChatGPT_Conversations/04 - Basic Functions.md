# 04 - Basic Functions

**Human:**
Here is a new Python programming task.

Please write a Python function called "addNumbers" that calculates the sum of two numeric values. The function should accept two arguments (the two numbers to be summed) and return the sum of these values.

Important: You only need to create the function. You do not need to invoke the function. CodeBuddy will invoke the function for you (using various different arguments). These are called "tests." After performing each test, CodeBuddy will print what is returned from your function. Near the bottom of this page, you will see the tests that CodeBuddy uses to test your function. After submitting your code, you will see the output of each test.

Here is some code to get your started:

    # Here is some code to get you started:
    def addNumbers(number1, number2):

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addNumbers(2, 2))

Below is the expected output:

    4

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addNumbers(0, 0))

Below is the expected output:

    0

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addNumbers(-1, 5001))

Below is the expected output:

    5000

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addNumbers(-5000.0, 5000.0))

Below is the expected output:

    0.0

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addNumbers(5.5, 1))

Below is the expected output:

    6.5

***

**Assistant:**

Here is the complete code for the function "addNumbers":

```
def addNumbers(number1, number2):
    return number1 + number2

```


***

**Human:**
Here is a new Python programming task.

Please write a Python function called "addThreeNumbers" that accepts 3 arguments. When this function is invoked, each of the parameter values will be either float or integer values. Your function should calculate and return the sum of these numbers.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addThreeNumbers(2, 2, 2))

Below is the expected output:

    6

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addThreeNumbers(-10, 10, 10.0))

Below is the expected output:

    10.0

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(addThreeNumbers(-1.0, 1.0, 5.5))

Below is the expected output:

    5.5

***

**Assistant:**

Here is the code for the function "addThreeNumbers":

```
def addThreeNumbers(num1, num2, num3):
    return num1 + num2 + num3

```


***

**Human:**
Here is a new Python programming task.

Please write a function called "tripleTake" that accepts one argument: a string. Your function should build a string that repeats the input string three times (with a period and a space between them and a period at the very end).

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(tripleTake("Biology is the study of living organisms"))

Below is the expected output:

    Biology is the study of living organisms. Biology is the study of living organisms. Biology is the study of living organisms.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(tripleTake("I am learning to program in Python"))

Below is the expected output:

    I am learning to program in Python. I am learning to program in Python. I am learning to program in Python.

***

**Assistant:**

Here is the code for the function "tripleTake":

```
def tripleTake(inputString):
    return (inputString + ". ") * 3 + "."

```


***

**Human:**
Thank you, but the output of your code does not match the expected output. There is an extra space character and an extra period at the end of each output. Can you fix this?

***

**Assistant:**

Sure! Here's the corrected code:

```
def tripleTake(inputString):
    return inputString + ". " + inputString + ". " + inputString + "."

```


***

**Human:**
Here is a new Python programming task.

Please write a Python function called "shouldIEat" that tells you whether you should eat, depending on how hungry you are. This function should accept a single argument. The value of that argument will be a number between 1 and 10. If your hunger level is greater than or equal to 8 and less than or equal to 10, the function should return, "Go eat!" If your hunger level is greater than or equal to 3 and less than 8, it should return, "Don't eat!" If your hunger level is greater than or equal to 1 and less than 3, it should return, "Take a nap!" If your hunger level is greater than 10 or less than 1, it should return, "Invalid input."

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(shouldIEat(9.5))

Below is the expected output:

    Go eat!

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(shouldIEat(8.0))

Below is the expected output:

    Go eat!

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(shouldIEat(7.9))

Below is the expected output:

    Don't eat!

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(shouldIEat(3.0))

Below is the expected output:

    Don't eat!

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(shouldIEat(1.1))

Below is the expected output:

    Take a nap!

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(shouldIEat(11))

Below is the expected output:

    Invalid input.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(shouldIEat(-2))

Below is the expected output:

    Invalid input.

***

**Assistant:**

Here's the solution for the "shouldIEat" task:

```
def shouldIEat(hunger_level):
    if hunger_level >= 1 and hunger_level <= 10:
        if hunger_level >= 8:
            return "Go eat!"
        elif hunger_level >= 3:
            return "Don't eat!"
        else:
            return "Take a nap!"
    else:
        return "Invalid input."

```


***

**Human:**
Here is a new Python programming task.

An ecologist is studying the effects of ambient temperature on nematode worm development. Her strategy is to place the worms in small boxes and then to place these boxes under different levels of heat exposure in her lab. Her goal is to determine the minimum number of boxes that she should buy so that there will enough room for all the worms. Different boxes hold different numbers of worms. Assume that she will fill an entire box before moving to the next one. However, the last box may not be full, if there are not enough worms to fill it.

Please write a Python function that allows researchers to calculate the number of boxes that they will need, depending on how many worms they have. Name the function "calculateWormBoxes". It should accept two arguments: 1) the number of worms and 2) the number of worms that can fit in a single box. Calculate the number of boxes that will be needed and return this number (an integer).

Hint(s):

    Don't forget to import the math module.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(calculateWormBoxes(100, 20))

Below is the expected output:

    5

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(calculateWormBoxes(337, 15))

Below is the expected output:

    23

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(calculateWormBoxes(1026, 47))

Below is the expected output:

    22

***

**Assistant:**

Here's your solution:

```
import math

def calculateWormBoxes(numWorms, wormsPerBox):
    return math.ceil(numWorms / wormsPerBox)

```


***

**Human:**
Here is a new Python programming task.

Suppose you are studying mammal species in the Utah Salt Flats. You capture a variety of species, weigh each of them, and record this information in a lab notebook. When you get back to the university, you need to convert those measurements from pounds to kilograms. One kilogram is equivalent to 2.2046 pounds.

Please write a Python function called "convertPoundsToKilograms" that performs this calculation. It should accept two arguments: 1) the name of the species, and 2) the number of pounds. Return something like the following: "Sylvilagus audubonii weighed 1.588 kg". (Please round the number of kilograms to three decimal places.)

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(convertPoundsToKilograms("Sylvilagus audubonii", 3.50))

Below is the expected output:

    Sylvilagus audubonii weighed 1.588 kg

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(convertPoundsToKilograms("Neotoma albigula", 15.45))

Below is the expected output:

    Neotoma albigula weighed 7.008 kg

***

**Assistant:**

Here is the solution to the problem in Python:

```
def convertPoundsToKilograms(species, pounds):
    kilograms = round(pounds / 2.2046, 3)
    return species + " weighed " + str(kilograms) + " kg"

```

This function first converts the weight in pounds to kilograms by dividing the weight by `2.2046`. Then, it rounds the result to 3 decimal places using the `round` function. Finally, it returns a string with the species name, weight in kilograms, and the unit "kg".


***

**Human:**
Here is a new Python programming task.

Suppose you are working in a research laboratory with E. coli (bacteria) that grow in culture. As you keep the bacteria in proper growth conditions, they multiply at a rate of 20% each day. Suppose that other scientists in the same laboratory are working with other types of bacteria, and these grow at different rates than the E. coli. 

Please write a function that allows researchers to predict the size of their bacterial population after 3 days. This function should be called "predictPopulationGrowth" and should accept three arguments: 1) the name of the bacterial species, 2) the number of bacteria at the beginning of the experiment, and 3) the growth rate per day. This function should calculate the expected growth after 3 days. This number should be rounded to the nearest whole number and converted to an integer value. The function should return a statement such as: "After 3 days, there will be 16345 E. coli".

Hint(s):

    To perform this calculation, multiply the original value by one plus the growth rate. Multiply the resulting value by one plus the growth rate. Then repeat this process one more time.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(predictPopulationGrowth("E. coli", 10, 0.20))

Below is the expected output:

    After 3 days, there will be 17 E. coli

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(predictPopulationGrowth("Yersinia pestis", 42847, 0.80))

Below is the expected output:

    After 3 days, there will be 249884 Yersinia pestis

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(predictPopulationGrowth("Actinobacteria", 9947, 0.0125))

Below is the expected output:

    After 3 days, there will be 10325 Actinobacteria

***

**Assistant:**

Here's your solution:

```
def predictPopulationGrowth(species, population, rate):
    for i in range(3):
        population = population * (1 + rate)
    return "After 3 days, there will be " + str(int(round(population))) + " " + species

```


***

**Human:**
Here is a new Python programming task.

Please write a Python function called "oddOrEven" that indicates whether an integer is odd or even. This function should accept a single argument that is a number. If the number is odd, the function should return "odd". If the number if even, it should return "even". However, the number must be a whole number to be considered odd or even. If it is not a whole number, your function should return "Not a whole number".

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(oddOrEven(3))

Below is the expected output:

    odd

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(oddOrEven(4))

Below is the expected output:

    even

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(oddOrEven(-3))

Below is the expected output:

    odd

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(oddOrEven(-4))

Below is the expected output:

    even

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(oddOrEven(5.25))

Below is the expected output:

    Not a whole number

***

**Assistant:**

Here's the solution:

```
def oddOrEven(num):
    if type(num) != int:
        return "Not a whole number"
    elif num % 2 == 0:
        return "even"
    else:
        return "odd"

```


***

**Human:**
Here is a new Python programming task.

Let's say you are tracking the amount of milk produced by each of three cows. Each day you want to know the maximum amount of milk produced by any of the cows in the group. 

Please write a Python function called "getMaxMilk" that accepts three arguments ("cow1", "cow2", and "cow3"), which are each numbers that represent the amount of milk produced by the cows. Your function should figure out the maximum amount of milk produced and then return the maximum value.

If there is a tie, just have it return any of the values.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(getMaxMilk(5.2, 3.3, 4.4))

Below is the expected output:

    5.2

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(getMaxMilk(0.9, 8.8, 1.2))

Below is the expected output:

    8.8

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(getMaxMilk(1.0, 1.0, 1.0))

Below is the expected output:

    1.0

***

**Assistant:**

Here is the code for the function `getMaxMilk`:

```
def getMaxMilk(cow1, cow2, cow3):
    return max(cow1, cow2, cow3)

```


***

**Human:**
Here is a new Python programming task.

As cellular RNA is translated into proteins, the cellular machinery processes the RNA in triplets (codons). Each codon is translated into an amino acid. There is a specific set of rules that determine which amino acid corresponds to which codon. For example, the codon "CTT" would be translated into a "Leucine" amino acid. This process continues until the cellular machine encounters a "stop" codon, which indicates that the translation process should be halted.

Examine this table. Identify the three codons that are stop codons. Then write a Python function called "isStopCodon" that accepts a single argument: a string that contains the codon sequence. Your function should return a Boolean value that indicates whether the specified codon is a stop codon.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(isStopCodon("ATA"))

Below is the expected output:

    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(isStopCodon("GTC"))

Below is the expected output:

    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(isStopCodon("CCC"))

Below is the expected output:

    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(isStopCodon("TAA"))

Below is the expected output:

    True

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(isStopCodon("AAA"))

Below is the expected output:

    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(isStopCodon("AAA"))

Below is the expected output:

    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(isStopCodon("CGT"))

Below is the expected output:

    False

***

**Assistant:**

Here is a function that solves the problem:

```
def isStopCodon(codon):
    stop_codons = ["TAA", "TAG", "TGA"]
    return codon in stop_codons

```

You can use the `in` operator to check if the given codon is in the list of stop codons. The function returns `True` if the codon is in the list, and `False` otherwise.


***

Exported on February 16, 2023 11:33 AM.