class Person < ApplicationRecord
    include PersonMethods
  
    has_secure_password
  
    validates :first_name, :last_name, :age, :email, presence: true
    validates :email, uniqueness: true
  end
  