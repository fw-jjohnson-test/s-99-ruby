###############################################################################
# Pack consecutive duplicates of list elements into sublists.
# If a list contains repeated elements they should be placed in separate sublists.
#
# Example:
# 	scala> pack(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e))
# 	res0: List[List[Symbol]] = List(List('a, 'a, 'a, 'a), List('b), List('c, 'c), List('a, 'a), List('d), List('e, 'e, 'e, 'e))
###############################################################################
def pack(ary, acc = [], sub = [], prev = nil)
	head, *tail = ary

	return acc if head.nil?

	if head == prev
		sub << head
	else
		sub = [ head ]
		#prev = head
		acc << sub
	end

	pack(tail, acc, sub, head)
end

a = ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
result = []
pack(a, result)
puts "#{result}"