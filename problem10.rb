###############################################################################
# Run-length encoding of a list.
# Use the result of problem P09 to implement the so-called run-length encoding data 
# compression method. Consecutive duplicates of elements are encoded as tuples (N, E) 
# where N is the number of duplicates of the element E.
#
# Example:
# 	scala> encode(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e))
# 	res0: List[(Int, Symbol)] = List((4,'a), (1,'b), (2,'c), (2,'a), (1,'d), (4,'e))
###############################################################################
require_relative 'problem3' # Find the Kth element of a list.
require_relative 'problem4' # Find the number of elements of a list.
require_relative 'problem9' # Pack consecutive duplicates of list elements into sublists.

def encode(ary, acc = [])
	head, *tail = ary
	return acc if head.nil?

	acc << [ find_length(head), get_nth(head, 0) ]

	encode(tail, acc)
end

a = [["a", "a", "a", "a"], ["b"], ["c", "c"], ["a", "a"], ["d"], ["e", "e", "e", "e"]]

result = []
encode(a, result)
puts "#{result}" # => [[4, "a"], [1, "b"], [2, "c"], [2, "a"], [1, "d"], [4, "e"]]