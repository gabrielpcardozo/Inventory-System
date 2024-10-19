# frozen_string_literal: true

class Client < Person
  has_many :items, optional: true, dependent: :nullify
end
