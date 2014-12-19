class Fibonacci
  def is_fibonacci?(n)
    fib_ary = [0,1]
    return true if fib_ary.include?(n)
    
    while n >= get_fibonacci(fib_ary)
      return true if n == get_fibonacci(fib_ary)
      fib_ary << get_fibonacci(fib_ary)
    end

    false
  end

  private 
  
  def get_fibonacci(a)
    a[-1] + a[-2]
  end
end
# require 'pry'
# 
# class Fibonacci
#   def is_fibonacci?(n)
#     #rv means return value
#     # http://ruby.bastardsbook.com/chapters/enumerables/
#     n.times.inject([0,1]) { |rv, e| rv << rv[-2] + rv[-1] }.include?(n)
#   end
# end
f = Fibonacci.new
p f.is_fibonacci?(7)
