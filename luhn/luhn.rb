# Today, you will be creating a class in Ruby that will implement
# a method that is commonly used to verify credit cards known
# as the Luhn algorithm.
# 
# This time, there will be no links to help you out. Look online
# on what the Luhn algorithm is, read how it is implemented, then
# turn the algorithm into Ruby code. Try not to look at already
# completed answers online. While its usually ok to look at other
# people's answers to learn from, its much more beneficial to try it
# out youself before looking at other answers. 
# 
# Search the Ruby documentation for any interesting methods that could help you implement the Luhn algorithm. Learning to get used to
# documentation is skill important to a developer. To get you started,
# you can start looking up the documentation in the following link:
# 
# http://ruby-doc.org/core-2.1.5/doc/syntax/methods_rdoc.html
# 
# 
# - Create a class called CreditCard
# - The CreditCard class has a method called 'valid?' which takes one string argument
# - The valid? method returns true for valid credit card numbers, and false for invalid credit cards numbers
# 
# When you are done, go to the root directory of the folder and 
# run `rake test` to see if you code passes all tests. 
# Two credit card numbers will be provided for you to use
# however you won't be able to know which one is valid until you finish
# writing the program for it.

cc1 = "49927398717"
cc2 = "1234567812345670"

# Reverse the digits:
#   61789372994
# Sum the odd digits:
#   6 + 7 + 9 + 7 + 9 + 4 = 42 = s1
# The even digits:
#     1,  8,  3,  2,  9
#   Two times each even digit:
#     2, 16,  6,  4, 18
#   Sum the digits of each multiplication:
#     2,  7,  6,  4,  9
#   Sum the last:
#     2 + 7 + 6 + 4 + 9 = 28 = s2

