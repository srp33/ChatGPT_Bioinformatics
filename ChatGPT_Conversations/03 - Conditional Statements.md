# 03 - Conditional Statements

**Human:**
Here is a new Python programming task.

Below is a Python program that has indentation mistakes. Change the code so that it will set the "title" variable based on the value of the "gender" variable and then use the "title" variable to print the final message in a way that addresses the person properly. Note, you will not need to change the order of the lines, just the indentation.

Note: You can use tabs or spaces (4 spaces = tab), but make sure to be consistent on all lines.

        title = "?"
                gender = "M"

        if gender == "M":
        title = "Sir"
                else:
        title = "Ma'am"

                                print("Pardon me, " + title + ". Do you have any Grey Poupon?")

Below is the expected output:

    Pardon me, Sir. Do you have any Grey Poupon?

***

**Assistant:**

Here is the corrected code with proper indentation:

```
title = "?"
gender = "M"

if gender == "M":
    title = "Sir"
else:
    title = "Ma'am"

print("Pardon me, " + title + ". Do you have any Grey Poupon?")

```


***

**Human:**
Here is a new Python programming task.

Please write Python code that does the following:

1. Declare a variable called "gasMeter" and set the value to 2.
2. Write an "if" statement that evaluates whether the value of "gasMeter" is less than or equal to 2. If it is, print a message telling the driver, "Go fill up at a gas station."

***

**Assistant:**
# Declare a variable called "gasMeter" and set the value to 2.
gasMeter = 2
# Write an "if" statement that evaluates whether the value of "gasMeter" is less than or equal to 2.
if gasMeter &lt;= 2:
# If it is, print a message telling the driver, "Go fill up at a gas station."
print("Go fill up at a gas station.")


***

**Human:**
Can you format that as code?

***

**Assistant:**

Certainly! Here's the code:

```
gasMeter = 2
if gasMeter <= 2:
    print("Go fill up at a gas station.")

```


***

**Human:**
Here is a new Python programming task.

Please write Python code that does the following:

1. Declare a variable called "gasMeter" and set the value to 6.
2. Write an "if" statement that evaluates whether the value of "gasMeter" is less than or equal to 2. If it is, print a message telling the driver, "Go fill up at a gas station." Otherwise, print a message telling the driver to "Take it easy."

***

**Assistant:**

gasMeter = 6

if gasMeter &lt;= 2:
print("Go fill up at a gas station.")
else:
print("Take it easy.")


***

**Human:**
Can you format that as code?

***

**Assistant:**

```
gasMeter = 6
if gasMeter <= 2:
    print("Go fill up at a gas station.")
else:
    print("Take it easy.")

```


***

**Human:**
Here is a new Python programming task.

Please write Python code that does the following:

1. Declare a variable called "gasMeter" and set the value to 1.
2. Declare a variable called "stationNearby" to False.

Then write nested "if/else" statements that do the following:

3. If the value of "gasMeter" is less than or equal to 2, print a message telling the driver, "Your vehicle is low on gasoline."
4. If the value of "gasMeter" is less than or equal to 2 and there is a station nearby, also print a message telling the driver to "There is a station nearby."
5. If the value of "gasMeter" is less than or equal to 2 and there is not a station nearby, tell the drive, "You will soon be stranded on the side of the road."
6. If the value of "gasMeter" is greater than 2, tell the driver to "Take it easy."

***

**Assistant:**

Here's the code that implements the above requirements:

```
gasMeter = 1
stationNearby = False

if gasMeter <= 2:
    print("Your vehicle is low on gasoline.")
    if stationNearby:
        print("There is a station nearby.")
    else:
        print("You will soon be stranded on the side of the road.")
else:
    print("Take it easy.")

```


***

**Human:**
Here is a new Python programming task.

Below is the Python code you examined in the previous exercise. Please rework the code so that it only uses one "if" statement and one "else" statement. It may use multiple "elif" statements.

    age = 64

    if age &lt; 18:
        print("You are just a baby!")
    else:
        if age &lt; 25:
            print("Your brain still is not fully developed!")
        else:
            if age &lt; 30:
                print("You are over a quarter century old!")
            else:
                if age &lt; 50:
                    print("You are not half a century old yet!")
                else:
                    if age &lt; 60:
                        print("You are over half a century old!")
                    else:
                        print("You are just hitting your prime!")

Below is the expected output:

    You are just hitting your prime!

***

**Assistant:**

Here's the reworked code:

```
age = 64

if age < 18:
    print("You are just a baby!")
elif age < 25:
    print("Your brain still is not fully developed!")
elif age < 30:
    print("You are over a quarter century old!")
elif age < 50:
    print("You are not half a century old yet!")
elif age < 60:
    print("You are over half a century old!")
else:
    print("You are just hitting your prime!")

```


***

Exported on February 16, 2023 11:37 AM.