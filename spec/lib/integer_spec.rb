require "#{File.dirname(__FILE__)}/../spec_helper"

describe Integer do
  
  describe :to_binary do
    
    it "should convert 1 to 00000001" do
      1.to_binary.should == "00000001"
    end
    
    it "should convert 2 to 00000010" do
      2.to_binary.should == "00000010"
    end
    
    it "should convert 3 to 00000011" do
      3.to_binary.should == "00000011"
    end

    it "should convert 255 to 11111111" do
      255.to_binary.should == "11111111"
    end
    
    it "should raise an exception if greater than 255" do
      lambda { 256.to_binary }.should raise_exception(BinaryError)
    end
    
  end
  
end