class Triangle
  define_method(:initialize)do |sideone,sidetwo,sidethree|
    @sideone= sideone
    @sidetwo= sidetwo
    @sidethree= sidethree
  end
  define_method(:sideone)do
    @sideone
  end
  define_method(:sidetwo)do
    @sidetwo
end
  define_method(:sidethree)do
    @sidethree
  end

  define_method(:not_triangle?)do
    if @sideone + @sidetwo<= @sidethree|| @sidetwo + @sidethree <= @sideone|| @sideone + @sidetwo<= @sidethree
      return false
    else
      return true
  end
end

define_method(:triangle_calc?) do
  if not_triangle?()
  if @sideone==@sidetwo && @sidetwo == @sidethree
    "equilateral"
  elsif @sideone ==@sidetwo || @sidetwo == @sidethree
    "isosceles"
  else
    "scalene"
end
end
end
end
