################################################################################
# Given two indices, I and K, the slice is the list containing the elements from 
# and including the Ith element up to but not including the Kth element of the 
# original list. Start counting the elements with 0.
#
# Example:
# 	scala> slice(3, 7, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
# 	res0: List[Symbol] = List('d, 'e, 'f, 'g)
###############################################################################

def slice_list(list, start, finish)
	list.map { |item| item if list.index(item) >= start and list.index(item) < finish  }
		.compact
end

list = 'a'.upto('k').to_a

slice_list(list, 3, 7)