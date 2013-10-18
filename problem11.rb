###############################################################################
# Modified run-length encoding.
# Modify the result of problem P10 in such a way that if an element has no duplicates 
# it is simply copied into the result list. Only elements with duplicates are 
# transferred as (N, E) terms.
#
# Example:
# 	scala> encodeModified(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e))
# 	res0: List[Any] = List((4,'a), 'b, (2,'c), (2,'a), 'd, (4,'e))
###############################################################################
require_relative 'problem3' # Find the Kth element of a list.
require_relative 'problem4' # Find the number of elements of a list.

def encode(ary, acc = [])
	head, *tail = ary
	return acc if head.nil?

	if find_length(head) == 1
		acc << head[0]
	else
		acc << [ find_length(head), get_nth(head, 0) ]
	end

	encode(tail, acc)
end

# Result from problem 9
a = [["a", "a", "a", "a"], ["b"], ["c", "c"], ["a", "a"], ["d"], ["e", "e", "e", "e"]]

result = []
encode(a, result)
puts "#{result}" # => [[4, "a"], [1, "b"], [2, "c"], [2, "a"], [1, "d"], [4, "e"]]