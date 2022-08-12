require "report_length"

RSpec.describe "report_length method" do
    it "Check length of string" do
        result = report_length("ghodaMotha")
        expect(result).to eq "This string was 10 characters long."
    end
end