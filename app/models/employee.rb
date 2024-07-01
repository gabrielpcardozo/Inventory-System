class Employee < Person
    include PersonMethods
    
    has_many :items, foreign_key: 'employee_id'
end