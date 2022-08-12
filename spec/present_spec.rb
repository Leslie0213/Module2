require "present"

RSpec.describe Present do

    it "happy path , wrap and unwrap " do
        present = Present.new
        present.wrap("box")
        expect(present.unwrap()).to eq "box"
    end

    it "Check fail for wrap" do
        present = Present.new()
        present.wrap("shoes")
        expect{present.wrap("sox")}.to raise_error "A contents has already been wrapped."
    end

    it "Check fail for unwrap" do
        present = Present.new()
       # present.wrap("shoes")
        expect{present.unwrap()}.to raise_error "No contents have been wrapped."
    end

end