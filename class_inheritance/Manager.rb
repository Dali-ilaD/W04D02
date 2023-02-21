require_relative 'Employee.rb'

class Manager < Employee
        attr_reader :employees
    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        b = salary_sum * multiplier
    end

    def salary_sum
        sum = 0
        @employees.each do |employee|
            if employee.is_a?(Manager)
             sum += employee.salary_sum + employee.salary
            else
               sum += employee.salary
            end
        end
        sum
    end

    def add_employees(employee)
        @employees << employee
    end
end

ned = Manager.new(ned, 'founder', 1000000, nil)
darren = Manager.new(darren, 'ta_manager', 78000, ned)
shawna = Employee.new(shawna, 'ta', 12000, darren)
david = Employee.new(david, 'ta', 10000, darren)

darren.add_employees(shawna)
darren.add_employees(david)
ned.add_employees(darren)

p ned.bonus(5)