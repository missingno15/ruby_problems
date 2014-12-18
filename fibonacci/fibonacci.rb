# Today you will solving the classic Fibonacci sequence challenge.
# 
# Create a Fibonacci class that has a method, #is_fibonacci? which takes a
# single number as an argument and returns true or false depending on whether
# or not it belongs in the Fibonacci sequence.
#
# Look online on if you don't know or don't remember
# what the Fibonacci sequence is, read how it is 
# implemented, then turn the algorithm into Ruby code. 
# Try not to look at already completed answers 
# online. While looking at other people's answers 
# is encouraged, its much more beneficial to try it out 
# youself before looking at other answers. 
# 
# Search the Ruby documentation for any interesting methods 
# that could help you implement the Reverse Polish Notation 
# algorithm. Learning to get used to documentation is skill 
# important to a developer. To get you started, you can 
# start looking up the documentation in the following link:
# 
# http://ruby-doc.org/core-2.1.5/doc/syntax/methods_rdoc.html

class Fibonacci
  def is_fibonacci? (check_number)

      def getting_fibonacci(n)

  	fibonacci_seq = Array.new(n+1)
	n == 0 ? fib_number = 0  
	n == 1 ? fib_number = 1
	while n > 1 
         fibonacci_seq.each {|n|		
	    fibonacci_number = fibonacci_number[n-1] + fibonacci_number[n-2]
         }
	end
	
	fibonacci_seq.include? check_number
      end
    
end


 
test = Fibonacci.new
test.is_fibonacci?(5)



