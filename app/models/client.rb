class Client < Person
    has_many :items, foreign_key: 'client_id'
end