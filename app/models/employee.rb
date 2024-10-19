# frozen_string_literal: true

class Employee < Person
  include PersonMethods
  # Atribui valor nulo caso o Employe for excluido.
  has_many :items, dependent: :nullify
end
