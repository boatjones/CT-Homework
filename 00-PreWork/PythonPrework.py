# Question #1
def greetings():
    username = input("What is your name?")
    print(f"Hello there, {username}!")


greetings()


# Question #2
def first_odds():
    for i in range(1, 101):
        if i % 2 == 1:
            print(i)


first_odds()

# Question  #3
def max_num_in_list(lst):
    print(max(lst))

my_list = [1, 69, 36, 26, 55]
max_num_in_list(my_list)


# Question #4
def is_leap_year(year):
    leap = None
    if (year % 100 == 0) and (year % 400):
        leap = True
    elif (year % 4 == 0) and (year % 100 != 0):
        leap = True
    else:
        leap = False

    return leap

is_leap_year(2028)


# Question #5 (I left my debugging steps in but commented out)
def is_consecutive(a_list):
    consec = None
    incr = None

    for i in a_list:
        if incr != None:
            # print(f"Top if: {i}")
            if i - incr == 1:
                # print(f"if {i - incr}")
                consec = True
                incr = i
            else:
                # print(f"else {i - incr}")
                consec = False
        else:
            incr = i
            # print(f"Incr {incr}")

    return consec

lst = [1, 2, 3, 4, 5, 6, 7]
is_consecutive(lst)

