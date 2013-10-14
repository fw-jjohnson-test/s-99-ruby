###############################################################################
# Find the number of elements of a list.
#
# Example:
# 	scala> length(List(1, 1, 2, 3, 5, 8))
# 	res0: Int = 6
###############################################################################
def find_length(ary, n = 0)
	head, *tail = ary
	return n if head.nil?

	find_length(tail, n + 1)
end

a = [1, 1, 2, 3, 5, 8]
puts find_length(a)