class Triangle
  
attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    if (s1*s2*s3) == 0 || (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2
      
      # raise
      begin
        raise TriangleError
          # puts error.message
        end
      
    elsif s1 == s2 && s1 == s3 && s2 == s3
      :equilateral
    
    elsif s1 == s2 || s1 == s3 || s2 == s3
      :isosceles
      
    else #s1 != s2 && s1 != s3 && s2 != s3
      :scalene
      
      
    end
  
    #isosceles has 2 equal sides 
    #equilateral has 3 equal sides 
    #scalene has NO EQUAL SIDES
  end
  
  class TriangleError < StandardError
  end
  
end
