# frozen_string_literal: true

class Client < Person
  has_many :items, dependent: :nullify
end
