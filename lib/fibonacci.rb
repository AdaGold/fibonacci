# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
# Time complexity: O(n), where n is the input parameter
# the loop will get executed n number of times
# Space complexity: O(1) - first, second and current use constant space as input value changes
def fibonacci(n)
  raise ArgumentError.new("input cannot be nil") if n == nil
  raise ArgumentError.new("input cannot be negative") if n < 0

  if n == 0 || n == 1
    return n
  end

  first = 0
  second = 1
  current = 1
  while n > 2
    first = second
    second = current
    current = first + second
    n -= 1
  end
  
  return current
end
