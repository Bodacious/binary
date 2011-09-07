class Integer
  
  require "binary_error"
  
  BINARY_COLS = [128, 64, 32, 16, 8, 4, 2, 1 ]
  
  def to_binary
    raise BinaryError, "Integer was greater than 255" if self > 255
    x = self
    BINARY_COLS.map do |col|
      if x >= col
        value = 1 
        x -= col        
      else
        value = 0
      end
      value
    end.join("")
  end

end