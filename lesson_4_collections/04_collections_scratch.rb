require 'pry'

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
	binding.pry
  array << pair.last
end