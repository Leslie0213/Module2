require "greet"

RSpec.describe "greet method" do
    it "returns hello to the name of the person passes" do
        result = greet("Rex")
        expect(result).to eq "Hello, Rex!"
    end
end 