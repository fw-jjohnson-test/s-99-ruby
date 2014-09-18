###############################################################################
# Decode a run-length encoded list.
# Given a run-length code list generated as specified in problem P10, construct 
# its uncompressed version.
#
# Example:
# 	scala> decode(List((4, 'a), (1, 'b), (2, 'c), (2, 'a), (1, 'd), (4, 'e)))
#   res0: List[Symbol] = List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e)
###############################################################################
require_relative 'problem10'

def decode(ary, acc = [])
	head, *tail = ary
	return acc if head.nil?

	if head.is_a?(Array)
		head.first.times { acc << head.last }
	else
		acc << head
	end

	decode(tail, acc)
end

# TEST
result = []
a = [[4, "a"], "b", [2, "c"], [2, "a"], "d", [4, "e"]]
decode(a, result)
puts "#{result}" # => ["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]