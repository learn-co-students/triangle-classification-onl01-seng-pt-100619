class Triangle
  
attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    
    #we need triangle rules..
    # The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. 
    
    # each side must be larger than 0.
    
    if (s1*s2*s3) == 0 || (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s2 + s1) <= s3
      
      # raise
      begin
        raise TriangleError
          puts error.message
        end
      
    elsif s1 == s2 && s1 == s3 
      self.kind = :equilateral
    
    elsif s1 == s2 || s1 == s3 || s2 == s3
      self.kind = :isosceles
      
    #elsif
      
    end
  
    #isosceles has 2 equal sides 
    #equilateral has 3 equal sides 
    #scalene has NO EQUAL SIDES
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end
