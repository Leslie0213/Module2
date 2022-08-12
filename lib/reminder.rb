# File: lib/reminder.rb
class Reminder
    def initialize(name)
      @name = name
    end
  
    def remind_me_to(task)
      @task = task
    end
  
    def remind()
      fail "No reninder set!" if @task.nil?
      return "#{@task}, #{@name}!"
    end
  end