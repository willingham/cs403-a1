import sys

def halve(num, count, twos):
    print(str(num) + " Count: " + str(count) + " Twos: " + str(twos))
    if ((num-count) <= 0):
        print(str(twos))
        return twos;
    elif (((count * 2) * 2) > num):
        halve(num-(count * 2), 1, twos + (count))
    elif ((count * 2)  < num):
        halve(num, count * 2, twos)


halve(20, 1, 0)
