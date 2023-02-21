class Employee
    
    attr_reader :salary, :name, :title

    def initialize(name, title, salray, boss)
        @name = name 
        @salary = salary    
        @title = title
        @boss = boss
    end
    
    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end