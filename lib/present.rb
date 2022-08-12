# File: lib/present.rb

class Present
    def wrap(contents)
      fail "A contents has already been wrapped." unless @contents.nil?
      @contents = contents
    end
  
    def unwrap
      fail "No contents have been wrapped." if @contents.nil?
      return @contents
    end
  end

  RSpec.describe Present do
    it "Check the wrap content" do 
      present = Present.new()
      present.wrap("shoes")
      expect(present.unwrap).to eq "shoes"
    end

    it "Check item already wrapped" do 
      present = Present.new()
      present.wrap("shoes")
      expect{present.wrap("shoes")}.to raise_error "A contents has already been wrapped."
    end

    it "Check nothing already wrapped" do 
      present = Present.new()
      #present.wrap("shoes")
      expect{present.unwrap()}.to raise_error "No contents have been wrapped."
    end


  end