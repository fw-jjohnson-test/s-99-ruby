###############################################################################
# Pack consecutive duplicates of list elements into sublists.
# If a list contains repeated elements they should be placed in separate sublists.
#
# Example:
# 	scala> pack(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e))
# 	res0: List[List[Symbol]] = List(List('a, 'a, 'a, 'a), List('b), List('c, 'c), List('a, 'a), List('d), List('e, 'e, 'e, 'e))
###############################################################################
def pack(ary, acc = [])
	return acc if ary.empty?

	head, *tail = ary

	if acc.empty? || acc.last[0] != head
		acc << [ head ]
	else
		acc.last << head
	end

	pack(tail, acc)
end

a = ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
result = []
pack(a, result)
puts "#{result}"