# Python General Notes

## Data types:
   1. float(7.)
   2. integer(7)
   3. string("7")
   4. tuple: contain many types of data separated by commas
  * immutable(a[2] = 333 >>> error.

## Container Objects:
   1. list = [a, b, c, d]
   2. string = "maple and pie"
   3. listofstrings = ["this", "is", "a", "list"]
   4. dictionary = {1: "cotton", 2: "mouth"} key: value pairs. 
      * keys must be unique
      *iteration*

## Print statements:
   a = [1, 2, 3, 4, 5]
   print(*a) >>> 1 2 3 4 5
   print(*a, sep=",") >>> 1, 2, 3, 4, 5 (these are integers)
   print(str(a), sep=" ") >>>1, 2, 3, 4, 5 (but now these characters are a string)

   ### Printing dictionaries: 
   scores = {'a': 1, 'b': 5, 'c': 7}
       print scores.items() >> [('c': 7), ('b' :5), ('a': 1)]
       print scores.keys() >> prints only ['a', 'b', 'c'], 
       print scores.values() >> prints only [1, 5, 7]
       for key in scores
       print key, score[key] >> a 1 / b 5 / c 7

   strli = ['maybe', 'I', 'can come together right now']
print(strli, sep=" ")

## Changing data types:
str() - stringifies
     example: age = 13 \ "I am " str(13) "years old." >> I am 13 years old.  
float() - turns integer into a float 
     example: float(2) >> 2.0
int() - makes float or integer into float
     example: int(2.0) >> 2

## list comprehensions:  print "\n". join(List) - 
var = [(operation on n) for n in (list or range of numbers) if (condition, e.g. mod == 0) 
   *ex* li = [i*2 for i in List] - will create a new list name li with all list items squared. 
evens_to_50 = [i for i in range(51) if i %2 == 0] > prints even numbers up to 50. 
slicing: prints a list comprehension or list according to a designation start, end and stride. 
print li[start:end:stride]
e.g. li[2:] >> prints all list items after index 2
     li[:2] >> prints all list items before index 2
     li[::2] >> prints all list items from 0, n with a stride of 2 

## Operators:
% mod- returns the remainder of a quotient
// floor- digits after the decimal are removed ( rounding to whole number)
<> not equal to
!= also not equal to
"> < ="  


## Bitwise Operators:
>> n - shift right- moves all digits n places to the right
e.g. 0b1000 >> 3 = 0b1
<< n - shift left - moves all digits n places to the left
e.g. 0b0001 << 3 = 0b1
^ XOR - compares two bitwise numbers - flips "on" (1) if one but not both are 1

## Looping:
for i in range(3)
    print i

## List operators:
list.append(n) - adds an item to the end of the list. Same as a[len(a)] = [x]
list.extend(iterable) - extends the list by appending all items from the iterable
    example: list1 = [1, 3, 4]
             list2 = [5, 2, 3]
             xtended = list1.extend(list2) 
             print xtended >> [1, 3, 4, 5, 2, 3]
list.insert(i, x) - insert x at position i of list
      list.insert(0, x) will insert x at first position
      list.insert(len(list), x) == list.insert(x) 
list.remove(x)- removes the first item from the list whose value is equal to x. 
list.pop() - removes and returns the item at the given position in the list. if no position is specified, last item will be returned
list.clear() - removes all items from the list


## Replacing text in string:
"%s is the greatest person in the state of %s" %(name, state)

## Functions:
   abs(arg)
   min(arg)
   max(arg) - 
   type()- outputs the type of the input e.g. integer, float, string
   .upper(string) 
   .lower(string)
   str()
   len()

## Important libraries:
math 
    sqrt 
datetime
    now = datetime.now()
    now.month, now.year, now.day
use * to import all functions in a library 
