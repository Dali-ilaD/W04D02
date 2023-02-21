require_relative 'Employee.rb'

class Manager < Employee

    def initialize(employees)
        @employees = [employees]
    end

    def bonus(multiplier)
        sum = 0
        @employees.each do |employee|
            sum += employee.salary
        end
        b = sum * multiplier
    end

end

