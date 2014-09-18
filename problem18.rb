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
	raise ArgumentError.new("list cannot be empty.") if list.empty?
	raise ArgumentError.new("start must be greater than 0 and less than the length of the list.") if start == 0 or start >= list.length
	raise ArgumentError.new("finish must be greater than start and less than the length of the list.") if finish <= start or finish > list.length

	list.map { |item| item if list.index(item) >= start and list.index(item) < finish  }
		.compact
end

list = 'a'.upto('k').to_a

puts slice_list(list, 3, 7)

def slice_list_duh(list, start, finish)
	list[start...finish]
end

puts slice_list_duh(list, 3, 7)