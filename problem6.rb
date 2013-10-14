###############################################################################
# Find out whether a list is a palindrome.
#
# Example:
# 	scala> isPalindrome(List(1, 2, 3, 2, 1))
# 	res0: Boolean = true
###############################################################################
# From problem 5
def reverse_list(ary, rev_ary = [])
	return rev_ary if ary.empty?

	head, *tail = ary
	reverse_list(tail, rev_ary.unshift(head))
end

def is_palindrome(ary)
	ary == reverse_list(ary)
end

a  = [1, 2, 3, 2, 1]
puts is_palindrome(a)