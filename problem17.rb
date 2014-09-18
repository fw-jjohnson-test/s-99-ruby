###############################################################################
# The length of the first part is given. Use a Tuple for your result.
#
# Example:
#   scala> split(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
#   res0: (List[Symbol], List[Symbol]) = (List('a, 'b, 'c),List('d, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
###############################################################################
def split(list, n)
    raise ArgumentError.new("list cannot be empty") if list.empty?
    raise ArgumentError.new("n must be greater than 0 and less than the length of the list.") if n == 0 or n >= list.length

    list.reduce({ :left => [], :right => []}) do |hash, item| 
        list.index(item) < n ? hash[:left] << item : hash[:right] << item
        hash
    end
end

list = 'a'.upto('k').to_a
puts split(list, 3)
# => {:left=>["a", "b", "c"], :right=>["d", "e", "f", "g", "h", "i", "j", "k"]}

puts split(list, 6)
# puts split([], 3) # test "cannot be empty" error
# puts split(list, 0) # test "invalid index" error

def split_duh(list, n)
    raise ArgumentError.new("list cannot be empty") if list.empty?
    raise ArgumentError.new("n must be greater than 0 and less than the length of the list.") if n == 0 or n >= list.length

    { :left => list[0...n], :right => list[n..-1] }
end

puts split_duh(list, 3)
puts split_duh(list, 6)