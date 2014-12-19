# Original solution
# class Fibonacci
#   def is_fibonacci?(n)
#     fib_ary = [0,1]
#     return true if fib_ary.include?(n)
#     
#     while n >= get_fibonacci(fib_ary)
#       return true if n == get_fibonacci(fib_ary)
#       fib_ary << get_fibonacci(fib_ary)
#     end
# 
#     false
#   end
# 
#   private 
#   
#   def get_fibonacci(a)
#     a[-1] + a[-2]
#   end
# end

#rv means return value
# http://ruby.bastardsbook.com/chapters/enumerables/

# First iteration of inject solution:
# # class Fibonacci
#   def is_fibonacci?(n)
#     #rv means return value
#     # http://ruby.bastardsbook.com/chapters/enumerables/
#     n.times.inject([0,1]) { |rv, e| rv << rv[-2] + rv[-1] }.include?(n)
#   end
# endrequire 'pry'

# Second iteration of inject solution:
class Fibonacci
  def is_fibonacci?(n)
    return true if n == 0
    n.times.inject([0,1]) do |rv, e| 
      binding.pry
      return true if rv.include?(n)
      break if rv.last > n
      rv << rv[-2] + rv[-1] 
    end
    false
  end
end
f = Fibonacci.new
p f.is_fibonacci?(144)



# showing inject method
# cool = [48, 46, 14, 15, 5, 99].inject(0) do |rv, e|
#   binding.pry
#   rv + e
# end
# 
# p cool
