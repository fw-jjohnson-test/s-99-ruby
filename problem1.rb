
###############################################################################
# Find the last element of a list.  Test
# another comment after moving the repo to an organization.
#
# Example:
# 	scala> last(List(1, 1, 2, 3, 5, 8))
# 	res0: Int = 8
###############################################################################
def get_last(ary)
	head, *tail = ary
	return head if tail[0].nil?#tail.empty?

	get_last(tail)
end

a = [1, 1, 2, 3, 5, 8]
puts get_last(a)
