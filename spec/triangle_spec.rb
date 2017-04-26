require('rspec')
require('triangle')

describe(Triangle) do
  describe("#not_triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.not_triangle?()).to(eq(false))
    end
  end
    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(5,5,5)
      expect(test_triangle.not_triangle?()).to(eq(true))
    end


  describe("#triangle_calc?") do
    it("returns equilateral if all sides of the triangle are equal") do
      test_triangle = Triangle.new(7,7,7)
      expect(test_triangle.triangle_calc?()).to(eq("equilateral"))
    end
end
    it("returns isosceles if any 2 sides of the triangle are equal") do
      test_triangle = Triangle.new(7,7,9)
      expect(test_triangle.triangle_calc?()).to(eq("isosceles"))
    end

    it("returns scalene if no sides of the triangle are equal") do
      test_triangle = Triangle.new(7,8,9)
      expect(test_triangle.triangle_calc?()).to(eq("scalene"))
    end

    # it("returns not a triangle if it is not a triangle") do
    #   test_triangle = Triangle.new(2,2,9)
    #   expect(test_triangle.triangle_calc()).to(eq("not a triangle"))
    # end


end
