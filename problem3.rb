###############################################################################
# Find the Kth element of a list.  By convention, the first element in the list 
# is element 0.
#
# Example:
# 	scala> nth(2, List(1, 1, 2, 3, 5, 8))
# 	res0: Int = 2
###############################################################################
def get_nth(ary, n)
	head, *tail = ary
	raise "n's value #{n} is greater than the size of the array." if head.nil?
	return head if n == 0

	get_nth(tail, n - 1)
end

a = [1, 1, 2, 3, 5, 8]
puts get_nth(a, 0)