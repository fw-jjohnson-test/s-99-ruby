###############################################################################
# Eliminate consecutive duplicates of list elements.
# If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
#
# Example:
#
# 	scala> compress(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e))
# 	res0: List[Symbol] = List('a, 'b, 'c, 'a, 'd, 'e)
###############################################################################
def compress(ary, acc = [], prev = nil)
	head, *tail = ary
	return acc if head.nil?

	acc << head unless head == prev

	compress(tail, acc, head)
end

a = ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
puts compress(a)
