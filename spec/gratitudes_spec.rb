require "gratitudes.rb"

RSpec.describe Gratitudes do

    it "Check without calling add method"do
        gratitudes = Gratitudes.new
        result = gratitudes.format
        expect(result).to eq "Be grateful for: "
    end

    it "Check if gratitude can be added"do
        gratitudes = Gratitudes.new
        gratitudes.add ("Ark") 
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Ark"
    end

    it "Check add gratitude for multiple strings"do
        gratitudes = Gratitudes.new
        gratitudes.add ("Ark")
        gratitudes.add ("Rex") 
        gratitudes.add ("Rejal")  
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Ark, Rex, Rejal"
    end

end