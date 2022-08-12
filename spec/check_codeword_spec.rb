require "check_codeword"

RSpec.describe "check_codeword method" do
    it " Checks for correct codeword" do 
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "Checks for first and last letters in codeword" do
        result = check_codeword("hose")
        expect(result).to eq "Close, but nope."
    end
    it "Checks for wrong codeword" do
        result = check_codeword("ghoda")
        expect(result).to eq "WRONG!"
    end
end