# File: spec/reminder_spec.rb

require 'reminder'

# We use the class name here rather than a string
RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    #reminder.remind_me_to("")
    #result = reminder.remind()
    expect  {reminder.remind()}.to raise_error  "No reninder set!"
  end

  # We would typically have a number of these examples.
end

