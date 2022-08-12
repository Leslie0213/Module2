require "string_builder"

RSpec.describe StringBuilder do

it "Adding String " do

    stringBuilder = StringBuilder.new
    stringBuilder.add("Makers,")
    stringBuilder.add(" Best place for Apprentiship") 
    result = stringBuilder.output
    expect(result).to eq "Makers, Best place for Apprentiship"
end

it "Check string size " do

    stringBuilder = StringBuilder.new
    stringBuilder.add("Makers")
    result = stringBuilder.size
    expect(result).to eq 6
end

context "Checking multiple things at a time" do
    
    it "Inside ContextAdding String " do

        stringBuilder = StringBuilder.new
        stringBuilder.add("Makers,")
        stringBuilder.add(" Best place for Apprentiship") 
        result = stringBuilder.output
        expect(result).to eq "Makers, Best place for Apprentiship"
    end
    
    it "Inside context Check string size " do
    
        stringBuilder = StringBuilder.new
        stringBuilder.add("Makers")
        result = stringBuilder.size
        expect(result).to eq 6
    end

end

end