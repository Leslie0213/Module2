require "password_checker2"

RSpec.describe PasswordChecker do



# First expectation = password length should be greater 
#than or equal to  8
it "password length should be greater than or equal to 8" do
    passworChecker = PasswordChecker.new()
    result =passworChecker.check("ahgecyvqujvecuqyv") 
    expect(result).to eq true
end


#Second expectation = if the password length is less 
 #   than 8 characters it should give error as 
 #   ""Invalid password, must be 8+ characters.""

 it "if the password length is less than 8 characters it should give error" do 
    passworChecker = PasswordChecker.new() 
    expect{passworChecker.check("jhgfd")}.to raise_error "Invalid password, must be 8+ characters."
 end




end

