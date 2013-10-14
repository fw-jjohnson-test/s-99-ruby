###############################################################################
# Find the last but one element of a list.
#
# Example:
# 	scala> penultimate(List(1, 1, 2, 3, 5, 8))
# 	res0: Int = 5
###############################################################################
def get_penulitmate(ary)
	head, *tail = ary
	return head if tail[1].nil?

	get_penulitmate(tail)
end

a = [1, 1, 2, 3, 5, 8]
puts get_penulitmate(a)