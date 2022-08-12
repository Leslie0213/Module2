require "password_checker"

RSpec.describe PasswordChecker do

    it "when password length is greater than 8"do
        passwordChecker = PasswordChecker.new
        expect(passwordChecker.check("GreaterThan8")).to eq true
    end 

    it "when password length is less than 8"do
        passwordChecker = PasswordChecker.new
        expect{passwordChecker.check("Great")}.to raise_error "Invalid password, must be 8+ characters."
    end 
end
