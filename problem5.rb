###############################################################################
# Reverse a list.
#
# Example:
# 	scala> reverse(List(1, 1, 2, 3, 5, 8))
# 	res0: List[Int] = List(8, 5, 3, 2, 1, 1)
###############################################################################
def reverse_list(ary, rev_ary = [])
	return rev_ary if ary.empty?

	head, *tail = ary
	reverse_list(tail, rev_ary.unshift(head))
end

a = [1, 1, 2, 3, 5, 8]
puts "reverse_list #{reverse_list(a)}"