require "counter"

RSpec.describe Counter do

    it "Add number to counter" do
        counter=Counter.new()
        counter.add(20)
        counter.add(39)
        result = counter.report()
        expect(result).to eq "Counted to 59 so far."

    end

end