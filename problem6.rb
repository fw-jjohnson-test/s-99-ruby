###############################################################################
# Find out whether a list is a palindrome.
#
# Example:
# 	scala> isPalindrome(List(1, 2, 3, 2, 1))
# 	res0: Boolean = true
###############################################################################
require_relative 'problem5'

def is_palindrome(ary)
	ary == reverse_list(ary)
end

a  = [1, 2, 3, 2, 1]
puts is_palindrome(a)
