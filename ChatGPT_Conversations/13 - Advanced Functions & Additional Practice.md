# 13 - Advanced Functions & Additional Practice

**Human:**
Here is a new Python programming task.

Please write a function called "checkIfGreater" that accepts two arguments. Both values will be integers. Your function should evaluate whether the first argument value is greater than the value of the second argument. The names of the arguments should be "int1" and "int2", respectively. The default values of these arguments should both be 0. The tests will check your code by using keyword arguments to make sure it is functioning correctly, so be sure to name your arguments correctly.

Your function should return "True" if the value of "int1" is greater than the value of "int2"; otherwise, it should return "False". Your function should also check the argument values to make sure they are integers. If either of the values is not an integer, your function should return "The input values were invalid."

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkIfGreater(4, 3))
    print(checkIfGreater(2, 5))

Below is the expected output:

    True
    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkIfGreater(int1 = 1, int2 = 4))
    print(checkIfGreater(int2 = 2, int1 = 5))

Below is the expected output:

    False
    True

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkIfGreater(2, int2 = 5))
    print(checkIfGreater(int2 = 5))

Below is the expected output:

    False
    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkIfGreater(int1 = 3))
    print(checkIfGreater(int2 = 3, int1 = 3))

Below is the expected output:

    True
    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkIfGreater())

Below is the expected output:

    False

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkIfGreater(int1 = 1, int2 = "4"))
    print(checkIfGreater(int2 = 6, int1 = "2"))

Below is the expected output:

    The input values were invalid.
    The input values were invalid.

***

**Assistant:**

Here's the solution to the task:

```
def checkIfGreater(int1=0, int2=0):
    if not (isinstance(int1, int) and isinstance(int2, int)):
        return "The input values were invalid."
    return int1 > int2

```

This function takes in two optional arguments `int1` and `int2` with default values of 0. It checks if both arguments are integers using the `isinstance` function, and returns "The input values were invalid." if either argument is not an integer. If both arguments are integers, the function returns `int1` compared to `int2` using the `&gt;` operator.


***

**Human:**
Here is a new Python programming task.

Please write a function called "describeGenome" that accepts two arguments. The first argument will be a string; it should be called "genome" and should have a default value of "human". The second argument will be an integer; it should be called "numChromosomePairs" and should have a default value of "23". The tests will check your code by using keyword arguments to make sure it is functioning correctly, so be sure to name your arguments correctly.

Your function should use the "genome" and "numChromosomePairs" values to return a string that indicates how many pairs of chromosomes are present in the specified genome. For example, if the default values are used, your function would return, "The human genome has 23 pairs of chromosomes." Or if the "genome" argument were "fruit fly" and the "numChromosomes" argument were 4, your function would return, "The fruit fly genome has 4 pairs of chromosomes."

Your function should use an f-string.

Hint(s):

    Hint: Use string formatting to construct the string.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome())

Below is the expected output:

    The human genome has 23 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome("fruit fly", 4))

Below is the expected output:

    The fruit fly genome has 4 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome("meadow vole"))

Below is the expected output:

    The meadow vole genome has 23 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome("Stalked Adder’s tongue", 1260))

Below is the expected output:

    The Stalked Adder’s tongue genome has 1260 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome(numChromosomePairs = 4, genome = "fruit fly"))

Below is the expected output:

    The fruit fly genome has 4 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome(numChromosomePairs = 23))

Below is the expected output:

    The human genome has 23 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome(genome = "meadow vole"))

Below is the expected output:

    The meadow vole genome has 23 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome(numChromosomePairs = 24))

Below is the expected output:

    The human genome has 24 pairs of chromosomes.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(describeGenome(genome="Stalked Adder's tongue", numChromosomePairs=1260))

Below is the expected output:

    The Stalked Adder's tongue genome has 1260 pairs of chromosomes.

***

**Assistant:**

Here is the implementation of the "describeGenome" function:

```
def describeGenome(genome="human", numChromosomePairs=23):
    return f"The {genome} genome has {numChromosomePairs} pairs of chromosomes."

```


***

**Human:**
Here is a new Python programming task.

Please write a function called "getTemperatureExtremes" that accepts a single argument: a list of float values. These numbers will indicate noontime temperatures (in degrees Celsius) observed at a specific geographic location on the first day of each month of a specific year. Your function should return two float values: 1) the lowest temperature in the list and 2) the highest temperature in the list.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    cairoMin, cairoMax = getTemperatureExtremes([15.4, 18.9, 26.7, 26.9, 33.5, 43.2, 37.8, 31.4, 33.8, 29.9, 23.4, 19.2])
    
    print(cairoMin)
    print(cairoMax)

Below is the expected output:

    15.4
    43.2

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    stockholmMin, stockholmMax = getTemperatureExtremes([-2.3, -8.9, 5.4, 6.9, 15.5, 20.2, 32.8, 25.7, 27.4, 19.9, 15.0, 4.2])
    
    print(stockholmMin)
    print(stockholmMax)

Below is the expected output:

    -8.9
    32.8

***

**Assistant:**

Here's the implementation for the `getTemperatureExtremes` function:

```
def getTemperatureExtremes(temperatures):
    return min(temperatures), max(temperatures)

```

This function uses the built-in `min` and `max` functions to get the minimum and maximum values in the list `temperatures`. The `min` function returns the smallest value in the list, while the `max` function returns the largest value in the list. The two values are then returned as a tuple.


***

**Human:**
Here is a new Python programming task.

Please write a function called "checkArgumentTypes" that accepts four different arguments. The names of these arguments should be "myString", "myFloat", "myInteger", and "myBoolean". Your function should check that each of the values of these arguments are the correct type. The value of "myString" should be a string; the value of "myFloat" should be a float, etc. If all of the values are the correct type, your function should return a string that states, "All of the input values were valid." Otherwise, your function should return a message that indicates which argument value(s) were invalid and what the invalid value(s) were.

For example, if an integer value of 3 were specified for "myString", your error message would state, "The value of myString [3] is not a String." If multiple values are invalid, your error message should indicate this. For example: "The value of myString [3] is not a String.\nThe value of myBoolean [7] is not a Boolean." The order of these messages should coincide with the following order: String, Float, Integer, Boolean.

The tests will check your code using keyword arguments to make sure it is functioning correctly, so be sure to name your arguments correctly.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkArgumentTypes("hello", 3.0, 4, True))

Below is the expected output:

    All of the input values were valid.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkArgumentTypes("hello", 3, "4", True))

Below is the expected output:

    The value of myFloat [3] is not a Float.
    The value of myInteger [4] is not an Integer.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkArgumentTypes(myFloat = 7.0, myBoolean = False, myString = "hi", myInteger = 40))

Below is the expected output:

    All of the input values were valid.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(checkArgumentTypes(myBoolean = "hello", myFloat = 8, myString = "hi", myInteger = 40.0))

Below is the expected output:

    The value of myFloat [8] is not a Float.
    The value of myInteger [40.0] is not an Integer.
    The value of myBoolean [hello] is not a Boolean.

***

**Assistant:**

Here is a solution for the "checkArgumentTypes" function:

```
def checkArgumentTypes(myString, myFloat, myInteger, myBoolean):
    error_message = []

    if not isinstance(myString, str):
        error_message.append(f"The value of myString [{myString}] is not a String.")

    if not isinstance(myFloat, float):
        error_message.append(f"The value of myFloat [{myFloat}] is not a Float.")

    if not isinstance(myInteger, int):
        error_message.append(f"The value of myInteger [{myInteger}] is not an Integer.")

    if not isinstance(myBoolean, bool):
        error_message.append(f"The value of myBoolean [{myBoolean}] is not a Boolean.")

    if error_message:
        return "\n".join(error_message)
    else:
        return "All of the input values were valid."

```


***

**Human:**
Here is a new Python programming task.

Researchers counted CD4 cells in HIV patients and assessed whether these counts increased after a year of treatment with a particular drug. The before and after counts are shown in "cd4.txt", a data file with tab-separated values.

Please write a function called "countDiffsGreaterThan" that accepts two arguments: 1) the path to the data file and 2) a numeric value (a threshold). Calculate the number of times that the number of CD4 cells increased by more than the specified threshold and return this number.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(countDiffsGreaterThan("cd4.txt", 0))

Below is the expected output:

    18

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(countDiffsGreaterThan("cd4.txt", 1))

Below is the expected output:

    6

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(countDiffsGreaterThan("cd4.txt", 2))

Below is the expected output:

    2

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    print(countDiffsGreaterThan("cd4.txt", 3))

Below is the expected output:

    0

Below is a description of a data file that is available for testing.

File name: cd4.txt

File contents:

    baseline        oneyear
    2.12        2.47
    4.35        4.61
    3.39        5.26
    2.51        3.02
    4.04        6.36
    5.1        5.93
    3.77        3.93
    3.35        4.09
    4.1        4.88
    3.35        3.81
    4.15        4.74
    3.56        3.29
    3.39        5.55
    1.88        2.82
    2.56        4.23
    2.96        3.23
    2.49        2.56
    3.03        4.31
    2.66        4.37
    3        2.4

***

**Assistant:**

Here is a implementation of the function "countDiffsGreaterThan":

```
def countDiffsGreaterThan(file_path, threshold):
    with open(file_path, "r") as f:
        lines = f.readlines()[1:]  # skip the header line
    
    count = 0
    for line in lines:
        baseline, oneyear = map(float, line.strip().split("\t"))
        diff = oneyear - baseline
        if diff > threshold:
            count += 1
    
    return count

```

This function opens the file specified by `file_path` using a context manager and `with` statement to ensure the file is properly closed after reading. It reads all lines except the header line, then calculates the difference between `oneyear` and `baseline` for each patient, and increments the `count` variable if the difference is greater than the `threshold`. Finally, it returns the `count` as the result.


***

**Human:**
Here is a new Python programming task.

Suppose that, as part of a biology class project, students were asked to measure their systolic blood pressure every class period. They saved this information into a tab-separated-value (TSV) file called "systolic.txt". In this file, each row represents a date, and each column represents a student. The header line of the file contains student names for all columns (other than the first column).

Your goal is to find the average blood pressure of each student for a specific date ranges. However, this problem is a bit challenging, so we will do it in two steps. This is the first step.

Write a function called "readData" that accepts a single argument: an integer. This integer will represent a day of the month. For example, if the integer were "16", it would refer to the date "16-Jan" in the file. This number might also refer to a day of the month that is not specified in the file (example: "1").

Your function should read "systolic.txt". It should ignore any blood-pressure values before the specified day of the month. Your function should evaluate the data for the remaining days. To get started, read the header line and store the students' names in a list. Second, create a dictionary. Each key in the dictionary should be a student's name. Each value in the dictionary should be a list of blood-pressure values for that student. Before you start reading through the data line by line, create a key in the dictionary for each student and specify its value as an empty list. Then as you loop through each line in the file, add the data points to the dictionary.

As you loop through each line of the file, you have to figure out which data point corresponds to which student. If you created a list with students' names (see above), then as you are looping through the file, you can convert each line of the file to a list that is "parallel" to the list of students' names. This will make it easier to match the names with the data values.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(0).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [120, 121, 115, 116, 122, 118, 110, 120, 117, 119, 120, 121, 125]
    John: [135, 130, 145, 131, 129, 135, 139, 141, 133, 138, 146, 135, 126]
    Sam: [111, 111, 112, 109, 110, 111, 117, 108, 110, 111, 111, 110, 106]
    Rachel: [105, 110, 103, 109, 105, 106, 103, 105, 110, 102, 110, 105, 104]
    June: [140, 142, 138, 140, 141, 143, 137, 140, 139, 141, 142, 137, 140]
    Thomas: [133, 135, 128, 139, 129, 135, 134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(6).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [120, 121, 115, 116, 122, 118, 110, 120, 117, 119, 120, 121, 125]
    John: [135, 130, 145, 131, 129, 135, 139, 141, 133, 138, 146, 135, 126]
    Sam: [111, 111, 112, 109, 110, 111, 117, 108, 110, 111, 111, 110, 106]
    Rachel: [105, 110, 103, 109, 105, 106, 103, 105, 110, 102, 110, 105, 104]
    June: [140, 142, 138, 140, 141, 143, 137, 140, 139, 141, 142, 137, 140]
    Thomas: [133, 135, 128, 139, 129, 135, 134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(12).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [116, 122, 118, 110, 120, 117, 119, 120, 121, 125]
    John: [131, 129, 135, 139, 141, 133, 138, 146, 135, 126]
    Sam: [109, 110, 111, 117, 108, 110, 111, 111, 110, 106]
    Rachel: [109, 105, 106, 103, 105, 110, 102, 110, 105, 104]
    June: [140, 141, 143, 137, 140, 139, 141, 142, 137, 140]
    Thomas: [139, 129, 135, 134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(18).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [110, 120, 117, 119, 120, 121, 125]
    John: [139, 141, 133, 138, 146, 135, 126]
    Sam: [117, 108, 110, 111, 111, 110, 106]
    Rachel: [103, 105, 110, 102, 110, 105, 104]
    June: [137, 140, 139, 141, 142, 137, 140]
    Thomas: [134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(24).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [119, 120, 121, 125]
    John: [138, 146, 135, 126]
    Sam: [111, 111, 110, 106]
    Rachel: [102, 110, 105, 104]
    June: [141, 142, 137, 140]
    Thomas: [127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(31).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: []
    John: []
    Sam: []
    Rachel: []
    June: []
    Thomas: []

Below is a description of a data file that is available for testing.

File name: systolic.txt

File contents:

    Date        Sarah        John        Sam        Rachel        June        Thomas
    6-Jan        120        135        111        105        140        133
    8-Jan        121        130        111        110        142        135
    10-Jan        115        145        112        103        138        128
    12-Jan        116        131        109        109        140        139
    14-Jan        122        129        110        105        141        129
    16-Jan        118        135        111        106        143        135
    18-Jan        110        139        117        103        137        134
    20-Jan        120        141        108        105        140        132
    22-Jan        117        133        110        110        139        128
    24-Jan        119        138        111        102        141        127
    26-Jan        120        146        111        110        142        131
    28-Jan        121        135        110        105        137        133
    30-Jan        125        126        106        104        140        134

***

**Assistant:**

Here is a code implementation of the "readData" function that meets the requirements:

```
def readData(day):
    data = {}
    with open("systolic.txt") as file:
        header = file.readline().strip().split("\t")
        for name in header[1:]:
            data[name] = []
        for line in file:
            line = line.strip().split("\t")
            if int(line[0]) >= day:
                for i, bp in enumerate(line[1:]):
                    data[header[i+1]].append(int(bp))
    return data

```

This code opens the file "systolic.txt" and reads the header line, which contains the names of the students. The names are stored in a list and used to create a dictionary `data` where each key is the name of a student and its value is an empty list. The code then loops through the rest of the lines in the file, ignoring any lines where the date (the first item in each line) is less than the given `day`. For each line that is not ignored, the blood pressure values are extracted and added to the list in the dictionary that corresponds to each student. Finally, the `data` dictionary is returned.


***

**Human:**
That solution gave me the following error message on line 9, in readData
    if int(line[0]) &gt;= day:
ValueError: invalid literal for int() with base 10: '6-Jan' Can you fix it?

***

**Assistant:**

The error message you're encountering is because the function `int()` is trying to convert the string `'6-Jan'` to an integer, but this string is not a valid integer representation.

To fix this, you'll need to parse the date string into a date object and then compare it to the `day` value. The `datetime` module provides the `datetime.strptime()` function to parse a date string into a date object. Here's an updated version of your code:

```
from datetime import datetime

def readData(filename, day):
    data = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip().split(',')
            date_str = line[0]
            date = datetime.strptime(date_str, '%d-%b')
            if date.day >= day:
                data.append(line)
    return data

```

In this code, the line `date = datetime.strptime(date_str, '%d-%b')` uses the `datetime.strptime()` function to parse the date string `date_str` into a date object, using the format `'%d-%b'` to specify the expected format of the date string (day-month). The `if date.day &gt;= day` statement then compares the day of the date object to the `day` argument.


***

**Human:**
The updated solution gave me this error: TypeError: readData() missing 1 required positional argument: 'day'. Here is the full prompt again: Suppose that, as part of a biology class project, students were asked to measure their systolic blood pressure every class period. They saved this information into a tab-separated-value (TSV) file called "systolic.txt". In this file, each row represents a date, and each column represents a student. The header line of the file contains student names for all columns (other than the first column).

Your goal is to find the average blood pressure of each student for a specific date ranges. However, this problem is a bit challenging, so we will do it in two steps. This is the first step.

Write a function called "readData" that accepts a single argument: an integer. This integer will represent a day of the month. For example, if the integer were "16", it would refer to the date "16-Jan" in the file. This number might also refer to a day of the month that is not specified in the file (example: "1").

Your function should read "systolic.txt". It should ignore any blood-pressure values before the specified day of the month. Your function should evaluate the data for the remaining days. To get started, read the header line and store the students' names in a list. Second, create a dictionary. Each key in the dictionary should be a student's name. Each value in the dictionary should be a list of blood-pressure values for that student. Before you start reading through the data line by line, create a key in the dictionary for each student and specify its value as an empty list. Then as you loop through each line in the file, add the data points to the dictionary.

As you loop through each line of the file, you have to figure out which data point corresponds to which student. If you created a list with students' names (see above), then as you are looping through the file, you can convert each line of the file to a list that is "parallel" to the list of students' names. This will make it easier to match the names with the data values.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(0).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [120, 121, 115, 116, 122, 118, 110, 120, 117, 119, 120, 121, 125]
    John: [135, 130, 145, 131, 129, 135, 139, 141, 133, 138, 146, 135, 126]
    Sam: [111, 111, 112, 109, 110, 111, 117, 108, 110, 111, 111, 110, 106]
    Rachel: [105, 110, 103, 109, 105, 106, 103, 105, 110, 102, 110, 105, 104]
    June: [140, 142, 138, 140, 141, 143, 137, 140, 139, 141, 142, 137, 140]
    Thomas: [133, 135, 128, 139, 129, 135, 134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(6).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [120, 121, 115, 116, 122, 118, 110, 120, 117, 119, 120, 121, 125]
    John: [135, 130, 145, 131, 129, 135, 139, 141, 133, 138, 146, 135, 126]
    Sam: [111, 111, 112, 109, 110, 111, 117, 108, 110, 111, 111, 110, 106]
    Rachel: [105, 110, 103, 109, 105, 106, 103, 105, 110, 102, 110, 105, 104]
    June: [140, 142, 138, 140, 141, 143, 137, 140, 139, 141, 142, 137, 140]
    Thomas: [133, 135, 128, 139, 129, 135, 134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(12).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [116, 122, 118, 110, 120, 117, 119, 120, 121, 125]
    John: [131, 129, 135, 139, 141, 133, 138, 146, 135, 126]
    Sam: [109, 110, 111, 117, 108, 110, 111, 111, 110, 106]
    Rachel: [109, 105, 106, 103, 105, 110, 102, 110, 105, 104]
    June: [140, 141, 143, 137, 140, 139, 141, 142, 137, 140]
    Thomas: [139, 129, 135, 134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(18).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [110, 120, 117, 119, 120, 121, 125]
    John: [139, 141, 133, 138, 146, 135, 126]
    Sam: [117, 108, 110, 111, 111, 110, 106]
    Rachel: [103, 105, 110, 102, 110, 105, 104]
    June: [137, 140, 139, 141, 142, 137, 140]
    Thomas: [134, 132, 128, 127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(24).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: [119, 120, 121, 125]
    John: [138, 146, 135, 126]
    Sam: [111, 111, 110, 106]
    Rachel: [102, 110, 105, 104]
    June: [141, 142, 137, 140]
    Thomas: [127, 131, 133, 134]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will use a for loop to print the output so it is more readable.
    for key, value in readData(31).items():
        print(f"{key}: {value}")

Below is the expected output:

    Sarah: []
    John: []
    Sam: []
    Rachel: []
    June: []
    Thomas: []

Below is a description of a data file that is available for testing.

File name: systolic.txt

File contents:

    Date        Sarah        John        Sam        Rachel        June        Thomas
    6-Jan        120        135        111        105        140        133
    8-Jan        121        130        111        110        142        135
    10-Jan        115        145        112        103        138        128
    12-Jan        116        131        109        109        140        139
    14-Jan        122        129        110        105        141        129
    16-Jan        118        135        111        106        143        135
    18-Jan        110        139        117        103        137        134
    20-Jan        120        141        108        105        140        132
    22-Jan        117        133        110        110        139        128
    24-Jan        119        138        111        102        141        127
    26-Jan        120        146        111        110        142        131
    28-Jan        121        135        110        105        137        133
    30-Jan        125        126        106        104        140        134

***

**Assistant:**

Here's the updated code which addresses the TypeError:

```
def readData(day):
    students = []
    data = {}
    with open("systolic.txt", "r") as file:
        header = file.readline().strip().split("\t")[1:]
        students = [student for student in header]
        for student in students:
            data[student] = []
        for line in file:
            line = line.strip().split("\t")
            date = int(line[0].split("-")[0])
            if date >= day:
                for i in range(len(students)):
                    data[students[i]].append(int(line[i+1]))
    return data

```

With this code, you should be able to get the expected output for the given tests.


***

**Human:**
Here is a new Python programming task.

This exercise builds on the previous one. First, copy and paste the "readData" function that you just created.

Then write a function called "saveAverages" that accepts two arguments: an integer and a string. The integer will represent a day of the month. For example, if the integer were "16", it would refer to the date "16-Jan" in the file. This number might also refer to a day of the month that is not specified in the file (example: "1"). The second argument (string) will be the name of a text file that your function should create.

Your "saveAverages" function should invoke your "readData" function, relaying the argument indicating the day of the month. With the resulting dictionary, your function should create a tab-delimited text file. This file should have two columns. The first column should store the names of students. The second column should store each person's average blood pressure (rounded to one decimal place). The rows should be sorted based on the names in the first column. If no measurements are available, store "Not available" in the second column. Your function does not need to return anything.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    import os
    
    saveAverages(0, "output.txt")
    
    # This code will read your file and print its contents so it can be matched against the expected output.
    if os.path.exists("output.txt"):
        with open("output.txt") as outputFile:
            for line in outputFile:
                print(line, end="")
    else:
        print("No output file exists at output.txt.")

Below is the expected output:

    Student        Average_BP
    John        135.6
    June        140.0
    Rachel        105.9
    Sam        110.5
    Sarah        118.8
    Thomas        132.2

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    import os
    
    saveAverages(6, "output.txt")
    
    # This code will read your file and print its contents so it can be matched against the expected output.
    if os.path.exists("output.txt"):
        with open("output.txt") as outputFile:
            for line in outputFile:
                print(line, end="")
    else:
        print("No output file exists at output.txt.")

Below is the expected output:

    Student        Average_BP
    John        135.6
    June        140.0
    Rachel        105.9
    Sam        110.5
    Sarah        118.8
    Thomas        132.2

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    import os
    
    saveAverages(12, "output.txt")
    
    # This code will read your file and print its contents so it can be matched against the expected output.
    if os.path.exists("output.txt"):
        with open("output.txt") as outputFile:
            for line in outputFile:
                print(line, end="")
    else:
        print("No output file exists at output.txt.")

Below is the expected output:

    Student        Average_BP
    John        135.3
    June        140.0
    Rachel        105.9
    Sam        110.3
    Sarah        118.8
    Thomas        132.2

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    import os
    
    saveAverages(18, "output.txt")
    
    # This code will read your file and print its contents so it can be matched against the expected output.
    if os.path.exists("output.txt"):
        with open("output.txt") as outputFile:
            for line in outputFile:
                print(line, end="")
    else:
        print("No output file exists at output.txt.")

Below is the expected output:

    Student        Average_BP
    John        136.9
    June        139.4
    Rachel        105.6
    Sam        110.4
    Sarah        118.9
    Thomas        131.3

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    import os
    
    saveAverages(24, "output.txt")
    
    # This code will read your file and print its contents so it can be matched against the expected output.
    if os.path.exists("output.txt"):
        with open("output.txt") as outputFile:
            for line in outputFile:
                print(line, end="")
    else:
        print("No output file exists at output.txt.")

Below is the expected output:

    Student        Average_BP
    John        136.2
    June        140.0
    Rachel        105.2
    Sam        109.5
    Sarah        121.2
    Thomas        131.2

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    import os
    
    saveAverages(31, "output.txt")
    
    # This code will read your file and print its contents so it can be matched against the expected output.
    if os.path.exists("output.txt"):
        with open("output.txt") as outputFile:
            for line in outputFile:
                print(line, end="")
    else:
        print("No output file exists at output.txt.")

Below is the expected output:

    Student        Average_BP
    John        Not available
    June        Not available
    Rachel        Not available
    Sam        Not available
    Sarah        Not available
    Thomas        Not available

Below is a description of a data file that is available for testing.

File name: systolic.txt

File contents:

    Date        Sarah        John        Sam        Rachel        June        Thomas
    6-Jan        120        135        111        105        140        133
    8-Jan        121        130        111        110        142        135
    10-Jan        115        145        112        103        138        128
    12-Jan        116        131        109        109        140        139
    14-Jan        122        129        110        105        141        129
    16-Jan        118        135        111        106        143        135
    18-Jan        110        139        117        103        137        134
    20-Jan        120        141        108        105        140        132
    22-Jan        117        133        110        110        139        128
    24-Jan        119        138        111        102        141        127
    26-Jan        120        146        111        110        142        131
    28-Jan        121        135        110        105        137        133
    30-Jan        125        126        106        104        140        134

***

**Assistant:**

Here is the implementation of the `saveAverages` function:

```
def saveAverages(day, filename):
    data = readData(day)
    with open(filename, 'w') as file:
        file.write("Student\tAverage_BP\n")
        for student in sorted(data.keys()):
            if len(data[student]) == 0:
                file.write(student + "\tNot available\n")
            else:
                avg_bp = round(sum(data[student])/len(data[student]), 1)
                file.write(student + "\t" + str(avg_bp) + "\n")

```

The function invokes the `readData` function with the given `day` parameter, and then it writes the contents of the resulting dictionary to a file with the given `filename`. The output file is tab-delimited with two columns: the first column for the names of the students, and the second column for each person's average blood pressure, which is rounded to one decimal place. If there are no measurements available for a student, "Not available" is stored in the second column. The rows are sorted based on the names in the first column.


***

**Human:**
That solution gave me an error: NameError: name 'readData' is not defined. Will you please include the `readData` function in the solution?

***

**Assistant:**

Sure, here's the updated code that includes the `readData` function:

```
def readData(file_name):
    with open(file_name, 'r') as file:
        data = file.readlines()
        data = [line.strip() for line in data]
        return data

def word_count(file_name):
    data = readData(file_name)
    word_count = {}
    for line in data:
        words = line.split()
        for word in words:
            word_count[word] = word_count.get(word, 0) + 1
    return word_count

word_counts = word_count('file.txt')
for word, count in word_counts.items():
    print(f"{word}: {count}")

```

The `readData` function reads the data from the file and returns a list of lines in the file. The `word_count` function uses the `readData` function to get the data, and then processes the data to count the occurrences of each word in the file. Finally, the code prints the word count for each word in the file.


***

**Human:**
Here is a new Python programming task.

Idiopathic pulmonary fibrosis (IPF) is a disease that causes lung tissue to form scars. This scarring prevents the person from breathing properly and eventually may cause lung failure. For most patients, physicians cannot determine a specific cause, and there is currently no cure. Accordingly, there is an urgent need for researchers to understand more about IPF.

Researchers at the University of Illinois at Chicago performed a study to examine 115 people who had either been diagnosed with IPF or who were healthy controls. They used gene-expression microarrays to profile blood cells from each person. In hopes of understanding more about the disease, the researchers searched for genes that are expressed differently between the two groups (IPF vs. healthy). The researchers posted their raw data online. For this exercise, you will use simplified versions of the data.

Each line (not including the header) contains data for a single patient. The first column indicates whether each patient was healthy or had IPF. The remaining columns contain gene-expression values for specific genes. The gene identifiers (for example, "ENSG00000159579") are from the Ensembl database.

The purpose of this exercise is to give you practice writing programs that use multiple functions. Please write functions with the following names:

 "convertStringsToFloats"
 "retrieveValues"
 "calculateAverage"
 "getAverageGeneExpression"

The "convertStringsToFloats" function should accept a single argument: a list of string values (these will be numeric values in string form). Your function should convert these strings to floats and create a new list that contains the floats. Lastly, your function should return the list of float values.

The "retrieveValues" function should accept three arguments: 1) the name of one of the gene-expression data files, 2) an Ensembl gene identifier, and 3) a phenotype (either "Healthy" or "IPF"). This function should iterate through the specified data file and retrieve expression values for the specified gene, but only for patients who match the specified phenotype. As you retrieve values from the file, store them (as string values) in a list and return that list.

The "calculateAverage" function should accept a single argument: a list of float values. This function should calculate and return the average of these values.

The "getAverageGeneExpression" function should accepts two arguments: 1) the name of one of the data files and 2) an Ensembl gene identifier. This function should return two values: 1) the average expression for the specified gene for the "Healthy" phenotype and 2) the average expression for the specified gene for the "IPF" phenotype. To obtain these values, invoke the "retrieveValues", "convertStringsToFloats", and "calculateAverage" functions from within the "getAverageGeneExpression" function.

The test code will invoke each of these functions.

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will first check to make sure the helper functions work
    print(convertStringsToFloats(["5.1", "2.3", "4.4"]))
    print(convertStringsToFloats(["9.9", "15.4", "1.0"]))

Below is the expected output:

    [5.1, 2.3, 4.4]
    [9.9, 15.4, 1.0]

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will first check to make sure the helper functions work
    print(retrieveValues("GeneExpression1.txt", "ENSG00000159579", "IPF"))
    print(retrieveValues("GeneExpression1.txt", "ENSG00000159579", "Healthy"))
    print(retrieveValues("GeneExpression2.txt", "ENSG00000260630", "IPF"))
    print(retrieveValues("GeneExpression2.txt", "ENSG00000260630", "Healthy"))

Below is the expected output:

    ['0.720443048666667', '1.07926641116667', '0.878639459166667', '0.965804671833333', '0.650749944', '0.763675397833333', '0.852651406', '1.02372743', '0.790027802333333', '0.975916547666667', '0.9513219925', '0.963846274666667', '0.840522914666667', '0.913611431166667', '0.7294963545', '0.869973905', '0.579357269833333', '0.803148642333333', '0.899024269666667', '0.882625347666667', '0.876259577', '0.9961458805', '0.597356628833333', '0.941969501833333', '1.02417957983333', '0.800099906166667', '0.920928301833333', '0.887203205', '0.7415509635', '0.918489527166667', '0.735468456833333', '0.85071585', '0.931519249', '0.829510049333333', '1.01348211833333', '0.717858250166667', '0.5559225695', '0.774489637833333', '0.587487637333333', '0.684169514833333', '0.711292474333333', '0.729910574', '0.576948023833333', '0.619548850833333', '0.6084259785', '0.739188058', '0.633424281666667', '0.761322311166667', '0.836358715833333', '0.6757913565', '0.682284854333333', '0.8334994795', '0.675695947', '0.858684911833333', '0.815437001', '0.7703783005', '0.781148020666667', '0.698799648', '0.8354274325']
    ['0.901418872166667', '0.852689667', '0.936391221166667', '0.867417970166667', '0.846749336666667', '0.689366527', '0.845154432', '0.908416151666667', '0.887684473166667', '1.01546799933333', '0.856701790833333', '0.730538818', '0.924559968833333', '0.8006456655', '0.7037035845', '0.933686961333333', '0.9048968025', '0.999194695666667', '0.858187995166667', '0.945059782166667', '0.970030449166667', '0.949303858666667', '0.849962371333333', '0.944543867833333', '0.723879957833333', '0.78488339', '0.744153883333333', '0.872937969333333', '0.835714428666667', '0.779100297666667', '0.918804511', '0.925546609666667', '0.9188464015', '0.978587744', '0.920691954']
    ['-0.309696331428571', '-0.182498225714286', '-0.247980797857143', '-0.0858778371428572', '-0.223409471428571', '-0.138069455', '-0.202700226428571', '-0.133333627857143', '-0.231426917142857', '-0.208714587857143', '-0.255090378571429', '-0.20140226', '-0.242353669285714', '-0.151470535', '-0.303789417142857', '-0.242421695', '-0.221999645714286', '-0.0679122935714286', '-0.121675904285714', '-0.161224825', '-0.103521242142857', '-0.194807208571429', '-0.0343955064285714', '-0.350856658571429', '-0.200068457857143', '-0.221881428571429', '-0.225046937142857', '-0.126005958571429', '-0.346330067857143', '-0.179361309285714', '-0.28350006', '-0.265007768571429', '-0.219416427857143', '-0.0915580107142857', '-0.137512372142857', '-0.328470062142857', '-0.152487093571429', '-0.170406159285714', '-0.356719008571429', '-0.225270512142857', '-0.346393447142857', '-0.239670892142857', '-0.315177131428571', '-0.286572312857143', '-0.189694412857143', '-0.228502737857143', '-0.267193097857143', '-0.146369179285714', '-0.254121916428571', '-0.280042720714286', '-0.176163881428571', '-0.228484878571429', '-0.102995643571429', '-0.294260162142857', '-0.279911625', '-0.418529934285714', '-0.262981955714286', '-0.217279261428571', '-0.376431605714286']
    ['-0.108228932142857', '-0.227582886428571', '-0.234746420714286', '-0.17906784', '-0.208843281428571', '-0.366101175', '-0.241616709285714', '-0.168552873571429', '-0.237061819285714', '-0.247392382142857', '-0.142178458571429', '-0.292672374285714', '-0.243790525714286', '-0.194076037142857', '-0.222449616428571', '-0.229420534285714', '-0.250636569285714', '-0.228571152857143', '-0.109752674285714', '-0.210930146428571', '-0.192667648571429', '-0.200293036428571', '-0.171904693571429', '-0.217204077857143', '-0.195743385', '-0.175639716428571', '-0.362762323571429', '-0.12970407', '-0.240267706428571', '-0.233506495', '-0.255999148571429', '-0.229160798571429', '-0.232046761428571', '-0.212818317142857', '-0.174095747857143']

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # We will first check to make sure the helper functions work
    print(calculateAverage([8.1, 0.03, 100.0]))
    print(calculateAverage([9.9, 150.29, 19.02]))

Below is the expected output:

    36.04333333333333
    59.73666666666667

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # This function will invoke the getAverageGeneExpression function and print the output
    def testAndCheck(dataFilePath, geneID):
        healthy, ipf = getAverageGeneExpression(dataFilePath, geneID)
        print(f"{geneID} and Healthy: {healthy}")
        print(f"{geneID} and IPF: {ipf}")
    
    testAndCheck("GeneExpression1.txt", "ENSG00000159579")
    testAndCheck("GeneExpression1.txt", "ENSG00000072506")
    testAndCheck("GeneExpression1.txt", "ENSG00000182013")

Below is the expected output:

    ENSG00000159579 and Healthy: 0.8721405831095237
    ENSG00000159579 and IPF: 0.8027492058559322
    ENSG00000072506 and Healthy: 0.932900728217143
    ENSG00000072506 and IPF: 1.0286842186779661
    ENSG00000182013 and Healthy: -0.13102794278571434
    ENSG00000182013 and IPF: -0.15293962288740914

Below is a description of a test to verify your code.

For this test, the following code will be executed after your code:

    # This function will invoke the getAverageGeneExpression function and print the output
    def testAndCheck(dataFilePath, geneID):
        healthy, ipf = getAverageGeneExpression(dataFilePath, geneID)
        print(f"{geneID} and Healthy: {healthy}")
        print(f"{geneID} and IPF: {ipf}")
    
    testAndCheck("GeneExpression2.txt", "ENSG00000170369")
    testAndCheck("GeneExpression2.txt", "ENSG00000161681")
    testAndCheck("GeneExpression2.txt", "ENSG00000260630")

Below is the expected output:

    ENSG00000170369 and Healthy: 0.32694815965714286
    ENSG00000170369 and IPF: 0.30755882427118647
    ENSG00000161681 and Healthy: -0.16983490472023813
    ENSG00000161681 and IPF: -0.15705856525070627
    ENSG00000260630 and Healthy: -0.2162138953061224
    ENSG00000260630 and IPF: -0.22129571437046008

Below is a description of a data file that is available for testing.

File name: GeneExpression1.txt

Here is a portion of the file:

    Status        ENSG00000159579        ENSG00000072506        ENSG00000076351        ENSG00000182013
    Healthy        0.901418872166667        1.0453540916        -0.0625931783333333        -0.0955378835714286
    Healthy        0.852689667        1.086381914        0.0176642633333333        -0.122901103571429
    Healthy        0.936391221166667        1.0534241872        -0.0134109266666667        -0.238341259642857
    IPF        0.720443048666667        0.7338941568        9.84291111111114e-4        -0.128031595
    IPF        1.07926641116667        1.0300255204        0.075187275        -0.137688708214286
    IPF        0.878639459166667        0.8317262244        -0.130544552777778        -0.211162568571429

***

**Assistant:**

Here is the code for the four functions mentioned in the task:

```
def convertStringsToFloats(stringValues):
    floatValues = [float(value) for value in stringValues]
    return floatValues

def retrieveValues(fileName, geneId, phenotype):
    expressionValues = []
    with open(fileName) as file:
        lines = file.readlines()
        header = lines[0]
        geneIndex = header.split().index(geneId)
        for line in lines[1:]:
            data = line.split()
            if data[0] == phenotype:
                expressionValues.append(data[geneIndex])
    return expressionValues

def calculateAverage(values):
    average = sum(values) / len(values)
    return average

def getAverageGeneExpression(fileName, geneId):
    healthyValues = retrieveValues(fileName, geneId, "Healthy")
    healthyValues = convertStringsToFloats(healthyValues)
    healthyAverage = calculateAverage(healthyValues)

    ipfValues = retrieveValues(fileName, geneId, "IPF")
    ipfValues = convertStringsToFloats(ipfValues)
    ipfAverage = calculateAverage(ipfValues)

    return (healthyAverage, ipfAverage)

```


***

Exported on February 16, 2023 11:39 AM.